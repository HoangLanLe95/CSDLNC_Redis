
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
    public async Task<IActionResult> GetUserList()
    {
        try
        { 
            string cacheKey = $"{UserDetailsKey}_all";
             
            var cachedData = await _distributedCache.GetStringAsync(cacheKey);
            if (!string.IsNullOrEmpty(cachedData))
            {
                var cachedUserDetails = JsonSerializer.Deserialize<List<UserAddressView>>(cachedData);
                return Ok(cachedUserDetails);
            }
             
            var listUser = await _context.Users
                .Where(u => u.IsActive)   
                .Select(u => new UserAddressView
                {
                    Id = u.Id,
                    UserName = u.Name,
                    Email = u.Email,
                    RoleName = u.Role.Name   
                })
                .ToListAsync(); 
            if (!listUser.Any())
            {
                return NotFound(new
                {
                    message = "Không tìm thấy người dùng nào!"
                });
            }

            // Serialize dữ liệu và lưu vào cache với thời gian hết hạn 5 phút
            var serializedData = JsonSerializer.Serialize(listUser);
            await _distributedCache.SetStringAsync(
                cacheKey,
                serializedData,
                new DistributedCacheEntryOptions
                {
                    AbsoluteExpirationRelativeToNow = TimeSpan.FromMinutes(5)
                });

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
                .Where(u => u.Id == id && u.IsActive)   
                .Select(u => new UserDetailsViewModel
                {
                    Id = u.Id,
                    UserName = u.Name,
                    Email = u.Email,
                    RoleName = u.Role != null ? u.Role.Name : null,
                    RoleId = u.Role != null ? u.Role.Id : 0,
                    Addresses = u.Addresses
                        .Where(a => a.IsActive)  
                        .Select(a => new AddressInfo
                        {
                            FullAddress = $"{a.Street}, {a.District}",
                            City = a.City,
                            Id = a.Id
                        })
                        .ToList()
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
            var existingUser = await _context.Users
                .FirstOrDefaultAsync(u => u.Email == request.Email);
            if (existingUser != null)
                return BadRequest(new { message = "Email đã tồn tại" });

            var role = await _context.Roles
                .FirstOrDefaultAsync(r => r.Id == request.RoleId);
            if (role == null)
                return BadRequest(new { message = "Role không hợp lệ" });

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

            _context.Users.Add(newUser);
            await _context.SaveChangesAsync();

            string userCacheKey = $"UserDetails_{newUser.Id}";
            await _distributedCache.RemoveAsync(userCacheKey);

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
            _logger.LogError(ex, "Lỗi khi lưu người dùng");

            var innerException = ex.InnerException?.Message ?? ex.Message;
            return StatusCode(500, new
            {
                message = "Có lỗi trong quá trình lưu dữ liệu",
                details = innerException
            });
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Lỗi không xác định khi thêm người dùng");
            return StatusCode(500, new { message = ex.Message });
        }
    }

    [HttpGet("SearchUsers")]
    public async Task<IActionResult> SearchUsers([FromQuery] string? searchTerm)
    {
        try
        { 
            string cacheKey = $"SearchUsers_{searchTerm?.Trim().ToLower() ?? "all"}";
             
            var cachedData = await _distributedCache.GetStringAsync(cacheKey);
            if (!string.IsNullOrEmpty(cachedData))
            {
                var cachedResponse = JsonSerializer.Deserialize<object>(cachedData);
                return Ok(cachedResponse);
            }

            var query = _context.Users.AsQueryable();
             
            if (!string.IsNullOrWhiteSpace(searchTerm))
            {
                searchTerm = searchTerm.Trim().ToLower();
                query = query.Where(u => u.IsActive == true &&
                    (EF.Functions.Collate(u.Name, "SQL_Latin1_General_CP1_CI_AI").Contains(searchTerm) ||
                     EF.Functions.Collate(u.Email, "SQL_Latin1_General_CP1_CI_AI").Contains(searchTerm) ||
                     EF.Functions.Collate(u.Role.Name, "SQL_Latin1_General_CP1_CI_AI").Contains(searchTerm)
                    ));
            }

            var users = await query
                .Select(u => new
                {
                    u.Id,
                    u.Name,
                    u.Email,
                    Role = u.Role.Name
                })
                .ToListAsync();

            var summary = users
                .GroupBy(u => u.Role)
                .Select(g => new { Role = g.Key, Count = g.Count() })
                .ToDictionary(x => x.Role, x => x.Count);

            var response = new
            {
                TotalUsers = users.Count,
                SearchCriteria = new { SearchTerm = searchTerm },
                Users = users,
                Summary = summary
            };

            if (!users.Any())
            {
                return NotFound(new
                {
                    message = "Không tìm thấy người dùng nào phù hợp với điều kiện tìm kiếm",
                    searchCriteria = response.SearchCriteria
                });
            }

            var serializedData = JsonSerializer.Serialize(response);
            await _distributedCache.SetStringAsync(
                cacheKey,
                serializedData,
                new DistributedCacheEntryOptions
                {
                    AbsoluteExpirationRelativeToNow = TimeSpan.FromMinutes(5)
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
            var user = await _context.Users
                .Include(u => u.Role)
                .FirstOrDefaultAsync(u => u.Id == userId);

            if (user == null)
                return NotFound(new { message = "Không tìm thấy người dùng" });

            var roleExists = await _context.Roles.AnyAsync(r => r.Id == request.RoleId);
            if (!roleExists)
                return BadRequest(new { message = "Role không hợp lệ" });

            user.Name = request.Name;
            user.RoleId = request.RoleId;
            user.Email = request.Email;
            user.UpdatedAt = DateTime.Now;

            await _context.SaveChangesAsync();

            string userCacheKey = $"UserDetails_{userId}";

            string roleCacheKey = user.Role != null ? $"UsersByRole_{user.Role.Id}" : null;

            await _distributedCache.RemoveAsync(userCacheKey);
            if (roleCacheKey != null)
            {
                await _distributedCache.RemoveAsync(roleCacheKey);
            }

            return Ok(new
            {
                message = "Cập nhật thành công",
                user = new
                {
                    user.Id,
                    user.Name,
                    user.Email,
                    Role = user.Role != null ? user.Role.Id : (int?)null
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
            var user = await _context.Users
                .Include(u => u.Role)
                .FirstOrDefaultAsync(u => u.Id == userId);

            if (user == null)
                return NotFound(new { message = "Không tìm thấy người dùng" });

            user.IsActive = false;
            user.UpdatedAt = DateTime.Now;

            await _context.SaveChangesAsync();

            string userCacheKey = $"UserDetails_{userId}";
            string roleCacheKey = $"UsersByRole_{user.Role.Id}";

            await _distributedCache.RemoveAsync(userCacheKey);
            await _distributedCache.RemoveAsync(roleCacheKey);

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
            var user = await _context.Users
                .Include(u => u.Addresses)
                .FirstOrDefaultAsync(u => u.Id == userId);

            if (user == null)
                return NotFound(new { message = "Không tìm thấy người dùng" });

            if (request.IsDefault)
            {
                foreach (var address in user.Addresses)
                {
                    address.IsDefault = false;
                }
            }

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

            string userCacheKey = $"UserDetails_{userId}";
            string cityCacheKey = $"SearchUsers_city_{request.City.ToLower()}";

            await _distributedCache.RemoveAsync(userCacheKey);
            await _distributedCache.RemoveAsync(cityCacheKey);

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

            address.Street = request.Street;
            address.City = request.City;
            address.District = request.District;
            address.PostalCode = request.PostalCode;
            address.IsDefault = request.IsDefault;
            address.UpdatedAt = DateTime.Now;

            await _context.SaveChangesAsync();

            string userCacheKey = $"UserDetails_{address.UserId}";
            string cityCacheKey = $"SearchUsers_city_{address.City.ToLower()}";

            await _distributedCache.RemoveAsync(userCacheKey);
            await _distributedCache.RemoveAsync(cityCacheKey);

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

            address.IsActive = false;

            _context.Addresses.Update(address);
            await _context.SaveChangesAsync();

            string userCacheKey = $"UserDetails_{address.UserId}";
            string cityCacheKey = $"SearchUsers_city_{address.City.ToLower()}";

            await _distributedCache.RemoveAsync(userCacheKey);
            await _distributedCache.RemoveAsync(cityCacheKey);

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