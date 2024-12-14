
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Caching.Distributed;
using RedisApplication.Model;
using StackExchange.Redis;
using System.Text.Json;
using static System.Net.WebRequestMethods;

[ApiController]
[Route("api/[controller]")]
public class UsersController : ControllerBase
{
    private readonly ApplicationDbContext _context;
    private readonly IDistributedCache _cache;
    private const string CacheKey = "users_list";
    private const string UserDetailsKey = "user_details";
    private readonly IDistributedCache _distributedCache;
    private readonly ILogger<UsersController> _logger;

    public UsersController(ApplicationDbContext context, IDistributedCache cache, IDistributedCache distributedCache, ILogger<UsersController> logger)
    {
        _context = context;
        _cache = cache;
        _distributedCache = distributedCache;
        _logger = logger;
    }

    [HttpGet("GetUserList")]
    public async Task<IActionResult> GetUserList(string? username = null)
    {
        //GET thông tin từ database, nếu đã lưu trong Redis, trả về kết quả trực tiếp từ cache
        try
        {
            //Tạo một khóa cache duy nhất, dựa trên UserDetailsKey và username. Nếu (username = null), khóa sẽ là "all".
            string cacheKey = $"{UserDetailsKey}_{username ?? "all"}";

            // Kiểm tra xem dữ liệu đã được lưu trữ trong Redis chưa bằng cách sử dụng khóa cacheKey. 
            var cachedData = await _distributedCache.GetStringAsync(cacheKey);

            //Nếu dữ liệu có trong cache, trả về dưới dạng đối tượng List<UserAddressView>.
            if (!string.IsNullOrEmpty(cachedData))
            {
                var cachedUserDetails = JsonSerializer.Deserialize<List<UserAddressView>>(cachedData);
                return Ok(cachedUserDetails);
            }

            // Truy vấn từ cơ sở dữ liệu nếu không có trong Redis

            var query = _context.Users
                .Include(u => u.Role)
                .Include(u => u.Addresses)
                .AsQueryable();

            //Nếu có tham số username (không phải null hay chuỗi rỗng), sẽ thêm điều kiện lọc vào truy vấn, chỉ lấy những người dùng thỏa đk
            if (!string.IsNullOrEmpty(username))
            {
                query = query.Where(u => u.Name == username);
            }
            var listUser = await query
     .Where(u => u.IsActive) // Lọc chỉ những người dùng có isActive = 1
     .Select(u => new UserAddressView
     {
         Id = u.Id,
         UserName = u.Name,
         Email = u.Email,
         RoleName = u.Role.Name,
         Addresses = u.Addresses.Select(a => new AddressInfo
         {
             FullAddress = $"{a.Street}, {a.District}",
             City = a.City
         }).ToList()
     })
     .ToListAsync();

            // Lưu dữ liệu vào Redis với thời gian hết hạn

            //Dữ liệu trả về từ cơ sở dữ liệu (userDetails) sẽ được chuyển đổi thành chuỗi JSON để lưu vào Redis.
            var serializedData = JsonSerializer.Serialize(listUser);
            await _distributedCache.SetStringAsync(
                cacheKey,
                serializedData,
                new DistributedCacheEntryOptions
                {
                    // AbsoluteExpirationRelativeToNow = TimeSpan.FromMinutes(5)
                    AbsoluteExpirationRelativeToNow = TimeSpan.FromSeconds(5)

                });
            //Lưu dữ liệu vào Redis với khóa cacheKey và thiết lập thời gian hết hạn của cache là 5s.

            return Ok(listUser);
        }
        catch (Exception ex)
        {
            return StatusCode(500, new { message = ex.Message });
        }
    }

    [HttpGet("{id}/GetUserById")]
    public async Task<IActionResult> GetUserById(int id)
    {
        try
        {
            var user = await _context.Users
    .Include(u => u.Role)
    .Include(u => u.Addresses)
    .Where(u => u.Id == id)
    .Select(u => new UserDetailsViewModel
    {
        Id = u.Id,
        UserName = u.Name,
        Email = u.Email,
        RoleName = u.Role != null ? u.Role.Name : null,
        RoleId = u.Role != null ? u.Role.Id : 0,
        Addresses = u.Addresses != null
            ? u.Addresses
                .Where(a => a.IsActive == true) // Thêm điều kiện IsActive = 1
                .Select(a => new AddressInfo
                {
                    FullAddress = $"{a.Street}, {a.District}",
                    City = a.City,
                    Id = a.Id
                }).ToList()
            : new List<AddressInfo>() // Trả về danh sách rỗng khi không có địa chỉ
    })
    .FirstOrDefaultAsync();


            if (user == null)
            {
                return NotFound(new { message = $"Không tìm thấy người dùng với ID {id}." });
            }

            return Ok(user);
        }
        catch (Exception ex)
        {
            return StatusCode(500, new { message = ex.Message });
        }
    }

    [HttpPost("AddUser")]
    public async Task<IActionResult> AddUser([FromBody] AddUserRequest request)
    {
        // Kiểm tra validation
        if (!ModelState.IsValid)
        {
            return BadRequest(new
            {
                message = "Dữ liệu không hợp lệ",
                errors = ModelState.Values
                    .SelectMany(v => v.Errors)
                    .Select(e => e.ErrorMessage)
                    .ToList()
            });
        }

        try
        {
            // Kiểm tra nếu email đã tồn tại
            var existingUser = await _context.Users
                .FirstOrDefaultAsync(u => u.Email == request.Email);
            if (existingUser != null)
                return BadRequest(new { message = "Email đã tồn tại" });

            // Kiểm tra role có hợp lệ
            var role = await _context.Roles
                .FirstOrDefaultAsync(r => r.Id == request.RoleId);
            if (role == null)
                return BadRequest(new { message = "Role không hợp lệ" });

            // Tạo mới người dùng
            var newUser = new User
            {
                Name = request.Name,
                Email = request.Email,
                RoleId = request.RoleId,
                Password = "password",
                IsActive = true,

                CreatedAt = DateTime.Now,
                UpdatedAt = DateTime.Now
            };

            // Thêm người dùng vào cơ sở dữ liệu
            _context.Users.Add(newUser);
            await _context.SaveChangesAsync();

            // Xóa cache liên quan đến người dùng và danh sách vai trò nếu cần
            string userCacheKey = $"UserDetails_{newUser.Id}";
            await _distributedCache.RemoveAsync(userCacheKey);

            // Trả về kết quả thành công
            return Ok(new
            {
                message = "Người dùng đã được thêm thành công",
                user = new
                {
                    newUser.Id,
                    newUser.Name,
                    newUser.Email,
                    Role = role.Id
                }
            });
        }
        catch (DbUpdateException ex)
        {
            // Log chi tiết lỗi
            _logger.LogError(ex, "Lỗi khi lưu người dùng");

            // Trích xuất inner exception để có thông tin chi tiết hơn
            var innerException = ex.InnerException?.Message ?? ex.Message;
            return StatusCode(500, new
            {
                message = "Có lỗi trong quá trình lưu dữ liệu",
                details = innerException
            });
        }
        catch (Exception ex)
        {
            // Log lỗi chung
            _logger.LogError(ex, "Lỗi không xác định khi thêm người dùng");
            return StatusCode(500, new { message = ex.Message });
        }
    }

    [HttpGet("SearchUsers")]
    public async Task<IActionResult> SearchUsers(
     [FromQuery] string? searchTerm)
    {
        try
        {
            // Chuẩn hóa searchTerm (cắt khoảng trắng và chuyển thành chữ thường)
            searchTerm = searchTerm.Trim().ToLower();

            // Tạo cache key từ tham số searchTerm
            string cacheKey = $"SearchUsers_{searchTerm}";

            // Kiểm tra Redis cache
            var cachedData = await _distributedCache.GetStringAsync(cacheKey);
            if (!string.IsNullOrEmpty(cachedData))
            {
                var cachedResponse = JsonSerializer.Deserialize<object>(cachedData);
                return Ok(cachedResponse);
            }

            // Truy vấn cơ sở dữ liệu
            var query = _context.Users
                .Include(u => u.Role)
                .Include(u => u.Addresses)
                .AsQueryable();

            // Tìm kiếm theo searchTerm cho name, email, role, và city
            query = query.Where(u => u.IsActive == true && // Điều kiện IsActive
                (u.Name.ToLower().Contains(searchTerm) ||
                 u.Email.ToLower().Contains(searchTerm) ||
                 u.Role.Name.ToLower().Contains(searchTerm) ||
                 u.Addresses.Any(a => a.City.ToLower().Contains(searchTerm))
                ));

            var users = await query
                .Select(u => new
                {
                    u.Id,
                    u.Name,
                    u.Email,
                    Role = u.Role.Name,
                    Addresses = u.Addresses.Select(a => new
                    {
                        a.Id,
                        a.Street,
                        a.City,
                        a.District,
                        a.PostalCode,
                        FullAddress = $"{a.Street}, {a.District}, {a.City}",
                        a.IsDefault
                    }).ToList(),
                    TotalAddresses = u.Addresses.Count
                })
                .ToListAsync();

            // Tạo response với thông tin tổng hợp
            var response = new
            {
                TotalUsers = users.Count,
                SearchCriteria = new
                {
                    SearchTerm = searchTerm
                },
                Users = users,
                Summary = new
                {
                    UsersByRole = users.GroupBy(u => u.Role)
                        .Select(g => new { Role = g.Key, Count = g.Count() })
                        .ToDictionary(x => x.Role, x => x.Count),
                    TotalAddresses = users.Sum(u => u.TotalAddresses),
                    CitiesRepresented = users.SelectMany(u => u.Addresses)
                        .Select(a => a.City)
                        .Distinct()
                        .ToList()
                }
            };

            if (!users.Any())
            {
                return NotFound(new
                {
                    message = "Không tìm thấy người dùng nào phù hợp với điều kiện tìm kiếm",
                    searchCriteria = response.SearchCriteria
                });
            }

            // Lưu dữ liệu vào Redis Cache
            var serializedData = JsonSerializer.Serialize(response);
            await _distributedCache.SetStringAsync(
                cacheKey,
                serializedData,
                new DistributedCacheEntryOptions
                {
                    AbsoluteExpirationRelativeToNow = TimeSpan.FromSeconds(5) // Cache tồn tại trong 5 giây
                });

            return Ok(response);
        }
        catch (Exception ex)
        {
            return StatusCode(500, new { message = ex.Message });
        }
    }




    [HttpGet("GetRoles")]
    public async Task<IActionResult> GetRoles()
    {
        try
        {
            var roles = await _context.Roles
                .Select(r => new
                {
                    r.Id,
                    r.Name,
                    r.Description
                })
                .ToListAsync();

            return Ok(roles);
        }
        catch (Exception ex)
        {
            return StatusCode(500, new { message = ex.Message });
        }
    }

    [HttpPut("{userId}/UpdateInfo")]
    public async Task<IActionResult> UpdateUserInfo(int userId, UpdateUserRequest request)
    {
        try
        {
            // Lấy thông tin người dùng từ cơ sở dữ liệu
            var user = await _context.Users
                .Include(u => u.Role)
                .FirstOrDefaultAsync(u => u.Id == userId);

            if (user == null)
                return NotFound(new { message = "Không tìm thấy người dùng" });

            // Kiểm tra role có tồn tại
            var roleExists = await _context.Roles.AnyAsync(r => r.Id == request.RoleId);
            if (!roleExists)
                return BadRequest(new { message = "Role không hợp lệ" });

            // Cập nhật thông tin người dùng
            user.Name = request.Name;
            user.RoleId = request.RoleId;
            user.Email = request.Email;
            user.UpdatedAt = DateTime.Now;

            await _context.SaveChangesAsync();

            // Xóa cache liên quan đến người dùng và danh sách vai trò
            string userCacheKey = $"UserDetails_{userId}";

            // Kiểm tra xem user.Role có null không trước khi truy cập
            string roleCacheKey = user.Role != null ? $"UsersByRole_{user.Role.Id}" : null;

            // Xóa cache trong Redis nếu roleCacheKey không phải là null
            await _distributedCache.RemoveAsync(userCacheKey);
            if (roleCacheKey != null)
            {
                await _distributedCache.RemoveAsync(roleCacheKey);
            }

            // Trả về kết quả sau khi cập nhật
            return Ok(new
            {
                message = "Cập nhật thành công",
                user = new
                {
                    user.Id,
                    user.Name,
                    user.Email,
                    Role = user.Role != null ? user.Role.Id : (int?)null // Nếu role là null, trả về null
                }
            });
        }
        catch (Exception ex)
        {
            return StatusCode(500, new { message = ex.Message });
        }
    }


    [HttpPut("{userId}/Deactivate")]
    public async Task<IActionResult> DeactivateUser(int userId)
    {
        try
        {
            // Lấy thông tin người dùng từ cơ sở dữ liệu
            var user = await _context.Users
                .Include(u => u.Role)
                .FirstOrDefaultAsync(u => u.Id == userId);

            if (user == null)
                return NotFound(new { message = "Không tìm thấy người dùng" });

            // Cập nhật cột isActive thành 0 (vô hiệu hóa người dùng)
            user.IsActive = false;
            user.UpdatedAt = DateTime.Now;

            await _context.SaveChangesAsync();

            // Xóa cache liên quan đến người dùng và danh sách vai trò
            string userCacheKey = $"UserDetails_{userId}";
            string roleCacheKey = $"UsersByRole_{user.Role.Id}";

            await _distributedCache.RemoveAsync(userCacheKey);
            await _distributedCache.RemoveAsync(roleCacheKey);

            // Trả về kết quả sau khi cập nhật
            return Ok(new { message = "Người dùng đã được vô hiệu hóa thành công" });
        }
        catch (Exception ex)
        {
            return StatusCode(500, new { message = ex.Message });
        }
    }



    [HttpPost("{userId}/AddAddress")]
    public async Task<IActionResult> AddUserAddress(int userId, UpdateAddressRequest request)
    {
        try
        {
            // Lấy thông tin người dùng
            var user = await _context.Users
                .Include(u => u.Addresses)
                .FirstOrDefaultAsync(u => u.Id == userId);

            if (user == null)
                return NotFound(new { message = "Không tìm thấy người dùng" });

            // Nếu đây là địa chỉ mặc định, hủy bỏ trạng thái mặc định của các địa chỉ hiện tại
            if (request.IsDefault)
            {
                foreach (var address in user.Addresses)
                {
                    address.IsDefault = false;
                }
            }

            // Thêm địa chỉ mới
            var newAddress = new Address
            {
                Street = request.Street,
                City = request.City,
                District = request.District,
                PostalCode = request.PostalCode,
                IsActive = request.IsActive,
                IsDefault = request.IsDefault,
                UserId = userId,
                CreatedAt = DateTime.Now,
                UpdatedAt = DateTime.Now
            };

            _context.Addresses.Add(newAddress);
            await _context.SaveChangesAsync();

            // Xóa cache liên quan đến người dùng
            string userCacheKey = $"UserDetails_{userId}";
            string cityCacheKey = $"SearchUsers_city_{request.City.ToLower()}";

            await _distributedCache.RemoveAsync(userCacheKey);
            await _distributedCache.RemoveAsync(cityCacheKey);

            // Trả về phản hồi
            return Ok(new
            {
                message = "Thêm địa chỉ thành công",
                address = new
                {
                    newAddress.Id,
                    newAddress.Street,
                    newAddress.City,
                    newAddress.District,
                    newAddress.PostalCode,
                    newAddress.IsDefault,
                    newAddress.IsActive
                }
            });
        }
        catch (Exception ex)
        {
            return StatusCode(500, new { message = ex.Message });
        }
    }


    [HttpPut("address/{addressId}")]
    public async Task<IActionResult> UpdateAddress(int addressId, UpdateAddressRequest request)
    {
        try
        {
            var address = await _context.Addresses
                .Include(a => a.User)
                .FirstOrDefaultAsync(a => a.Id == addressId);

            if (address == null)
                return NotFound(new { message = "Không tìm thấy địa chỉ" });

            // Nếu đặt làm địa chỉ mặc định
            if (request.IsDefault && !address.IsDefault)
            {
                var otherAddresses = await _context.Addresses
                    .Where(a => a.UserId == address.UserId && a.Id != addressId)
                    .ToListAsync();

                foreach (var otherAddress in otherAddresses)
                {
                    otherAddress.IsDefault = false;
                }
            }

            // Cập nhật thông tin địa chỉ
            address.Street = request.Street;
            address.City = request.City;
            address.District = request.District;
            address.PostalCode = request.PostalCode;
            address.IsDefault = request.IsDefault;
            address.UpdatedAt = DateTime.Now;

            await _context.SaveChangesAsync();

            // Xóa cache liên quan đến người dùng và thành phố
            string userCacheKey = $"UserDetails_{address.UserId}";
            string cityCacheKey = $"SearchUsers_city_{address.City.ToLower()}";

            await _distributedCache.RemoveAsync(userCacheKey);
            await _distributedCache.RemoveAsync(cityCacheKey);

            // Trả về kết quả sau khi cập nhật
            return Ok(new
            {
                message = "Cập nhật địa chỉ thành công",
                address = new
                {
                    address.Id,
                    address.Street,
                    address.City,
                    address.District,
                    address.PostalCode,
                    address.IsDefault
                }
            });
        }
        catch (Exception ex)
        {
            return StatusCode(500, new { message = ex.Message });
        }
    }


    [HttpPut("address/{addressId}/Deactivate")]
    public async Task<IActionResult> DeactivateAddress(int addressId)
    {
        try
        {
            var address = await _context.Addresses
                .Include(a => a.User)
                .FirstOrDefaultAsync(a => a.Id == addressId);

            if (address == null)
                return NotFound(new { message = "Không tìm thấy địa chỉ" });

            // Cập nhật trạng thái IsActive thành 0
            address.IsActive = false;

            _context.Addresses.Update(address); // Cập nhật địa chỉ trong cơ sở dữ liệu
            await _context.SaveChangesAsync(); // Lưu thay đổi

            // Xóa cache liên quan đến người dùng và thành phố
            string userCacheKey = $"UserDetails_{address.UserId}";
            string cityCacheKey = $"SearchUsers_city_{address.City.ToLower()}";

            await _distributedCache.RemoveAsync(userCacheKey);
            await _distributedCache.RemoveAsync(cityCacheKey);

            // Trả về kết quả sau khi cập nhật
            return Ok(new { message = "Đã vô hiệu hóa địa chỉ thành công" });
        }
        catch (Exception ex)
        {
            return StatusCode(500, new { message = ex.Message });
        }
    }
    // Override phương thức InvalidateCache để xóa tất cả các cache keys
    private async Task InvalidateCache()
    {
        await _cache.RemoveAsync(CacheKey);
        // Xóa cache của user details
        var cities = await _context.Addresses
            .Select(a => a.City)
            .Distinct()
            .ToListAsync();

        foreach (var city in cities)
        {
            await _cache.RemoveAsync($"{UserDetailsKey}_{city}");
        }
        await _cache.RemoveAsync($"{UserDetailsKey}_all");
    }
}