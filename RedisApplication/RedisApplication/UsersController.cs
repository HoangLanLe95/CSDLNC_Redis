//using Microsoft.AspNetCore.Mvc;
//using Microsoft.EntityFrameworkCore;
//using Microsoft.Extensions.Caching.Distributed;
//using RedisApplication;
//using System.Text.Json;
//[ApiController]
//[Route("api/[controller]")]
//public class UsersController : ControllerBase
//{
//    private readonly ApplicationDbContext _context;
//    private readonly IDistributedCache _cache;
//    private const string CacheKey = "users_list";

//    public UsersController(ApplicationDbContext context, IDistributedCache cache)
//    {
//        _context = context;
//        _cache = cache;
//    }

//    [HttpGet("GetUsers")]
//    //[ProducesResponseType(typeof(List<User>), StatusCodes.Status200OK)] 
//    public async Task<IActionResult> GetUsers()
//    {
//        // Thử lấy từ cache
//        string cachedUsers = await _cache.GetStringAsync(CacheKey);

//        if (!string.IsNullOrEmpty(cachedUsers))
//        {
//            var users = JsonSerializer.Deserialize<List<User>>(cachedUsers);
//            return Ok(users);
//        }

//        // Nếu không có trong cache, lấy từ database
//        var usersFromDb = await _context.Users.ToListAsync();

//        // Lưu vào cache với thời gian hết hạn là 1 phút
//        await _cache.SetStringAsync(
//            CacheKey,
//            JsonSerializer.Serialize(usersFromDb),
//            new DistributedCacheEntryOptions
//            {
//                AbsoluteExpirationRelativeToNow = TimeSpan.FromMinutes(1)
//            });

//        return Ok(usersFromDb);
//    }

//    [HttpPost("CreateUser")]
//    public async Task<IActionResult> CreateUser([FromBody] User user)
//    {
//        if (user == null)
//            return BadRequest();

//        _context.Users.Add(user);
//        await _context.SaveChangesAsync();

//        // Xóa cache khi có thay đổi dữ liệu
//        await InvalidateCache();

//        return CreatedAtAction(nameof(GetUsers), new { id = user.Id }, user);
//    }

//    [HttpPut("{id}")]
//    public async Task<IActionResult> UpdateUser(int id, [FromBody] User user)
//    {
//        if (id != user.Id)
//            return BadRequest();

//        _context.Entry(user).State = EntityState.Modified;
//        await _context.SaveChangesAsync();

//        // Xóa cache khi có thay đổi dữ liệu
//        await InvalidateCache();

//        return NoContent();
//    }

//    [HttpDelete("{id}")]
//    public async Task<IActionResult> DeleteUser(int id)
//    {
//        var user = await _context.Users.FindAsync(id);
//        if (user == null)
//            return NotFound();

//        _context.Users.Remove(user);
//        await _context.SaveChangesAsync();

//        // Xóa cache khi có thay đổi dữ liệu
//        await InvalidateCache();

//        return NoContent();
//    }

//    // Phương thức để xóa cache
//    private async Task InvalidateCache()
//    {
//        await _cache.RemoveAsync(CacheKey);
//    }

//    // Thêm endpoint để xóa cache thủ công nếu cần
//    [HttpPost("clear-cache")]
//    public async Task<IActionResult> ClearCache()
//    {
//        await InvalidateCache();
//        return Ok("Cache cleared successfully");
//    }
//}


using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Caching.Distributed;
using RedisApplication;
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



    public UsersController(ApplicationDbContext context, IDistributedCache cache, IDistributedCache distributedCache)
    {
        _context = context;
        _cache = cache;
        _distributedCache = distributedCache;
    }

    [HttpGet("GetUserDetails")]
    public async Task<IActionResult> GetUserDetails(string? city = null)
    {
        //Đoạn code này thực hiện một yêu cầu HTTP GET để lấy thông tin chi tiết người dùng từ cơ sở dữ liệu,
        //đồng thời sử dụng Redis để lưu trữ kết quả và giảm tải cho hệ thống trong các lần truy vấn tiếp theo.
        //Nếu có dữ liệu đã được lưu trong Redis, sẽ trả về kết quả trực tiếp từ cache, giúp tăng tốc độ phản hồi.
        try
        {
            //Tạo một khóa cache duy nhất, dựa trên UserDetailsKey và city. Nếu không có thành phố (city = null), khóa sẽ là "all".
            string cacheKey = $"{UserDetailsKey}_{city ?? "all"}";

            // Kiểm tra xem dữ liệu đã được lưu trữ trong Redis chưa bằng cách sử dụng khóa cacheKey. 
            var cachedData = await _distributedCache.GetStringAsync(cacheKey);
            //Nếu dữ liệu có trong cache (không phải null hay chuỗi rỗng), thì tiếp tục giải mã dữ liệu từ JSON và trả về dưới dạng đối tượng List<UserAddressView>.
            if (!string.IsNullOrEmpty(cachedData))
            {
                // Giải mã dữ liệu JSON từ Redis thành một danh sách các đối tượng UserAddressView
                var cachedUserDetails = JsonSerializer.Deserialize<List<UserAddressView>>(cachedData);
                //Trả về kết quả từ Redis dưới dạng HTTP response với mã trạng thái 200 OK.
                return Ok(cachedUserDetails);
            }

            // Truy vấn từ cơ sở dữ liệu nếu không có trong Redis

            //Bắt đầu một truy vấn LINQ trên bảng Users trong cơ sở dữ liệu, kết hợp dữ liệu từ bảng Role và Addresses của mỗi người dùng.
            //Đây là kiểu truy vấn "Eager Loading", tức là truy vấn luôn kèm theo dữ liệu liên quan từ các bảng khác.
            var query = _context.Users
                .Include(u => u.Role)
                .Include(u => u.Addresses)
                .AsQueryable();

            //Nếu có tham số city (không phải null hay chuỗi rỗng), sẽ thêm điều kiện lọc vào truy vấn, chỉ lấy những người dùng có địa chỉ thuộc thành phố đó.
            if (!string.IsNullOrEmpty(city))
            {

                //Lọc các người dùng có ít nhất một địa chỉ có thành phố tương ứng với city
                query = query.Where(u => u.Addresses.Any(a => a.City == city));
            }
            //Thực hiện truy vấn và chuyển đổi kết quả thành một danh sách các đối tượng UserAddressView, bao gồm tên, email, vai trò của người dùng, và các địa chỉ của họ.
            //Dữ liệu này sẽ được trả về dưới dạng danh sách các đối tượng.
            var userDetails = await query
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
            //Select(u => new UserAddressView {...}): Dựng một đối tượng mới UserAddressView với các thông tin người dùng và địa chỉ.
            //ToListAsync(): Chuyển đổi kết quả truy vấn thành một danh sách các đối tượng bất đồng bộ(async).



            // Lưu dữ liệu vào Redis với thời gian hết hạn

            //Dữ liệu trả về từ cơ sở dữ liệu (userDetails) sẽ được chuyển đổi thành chuỗi JSON để lưu vào Redis.
            var serializedData = JsonSerializer.Serialize(userDetails);
            await _distributedCache.SetStringAsync(
                cacheKey,
                serializedData,
                new DistributedCacheEntryOptions
                {
                    // AbsoluteExpirationRelativeToNow = TimeSpan.FromMinutes(5)
                    AbsoluteExpirationRelativeToNow = TimeSpan.FromSeconds(15)

                });
            //Lưu dữ liệu vào Redis với khóa cacheKey và thiết lập thời gian hết hạn của cache là 5 phút.


            // Trả về dữ liệu từ cơ sở dữ liệu
            //Nếu dữ liệu không có trong cache, sau khi lấy từ cơ sở dữ liệu và lưu vào Redis, dữ liệu sẽ được trả về cho client dưới dạng response HTTP với mã trạng thái 200 OK.
            return Ok(userDetails);
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
                        ? u.Addresses.Select(a => new AddressInfo
                        {
                            FullAddress = $"{a.Street}, {a.District}",
                            City = a.City
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
    public async Task<IActionResult> AddUser(AddUserRequest request)
    {
        try
        {
            // Kiểm tra nếu email đã tồn tại
            var existingUser = await _context.Users
                .FirstOrDefaultAsync(u => u.Email == request.Email);
            if (existingUser != null)
                return BadRequest(new { message = "Email đã tồn tại" });

            // Kiểm tra role có hợp lệ
            var roleExists = await _context.Roles.AnyAsync(r => r.Id == request.RoleId);
            if (!roleExists)
                return BadRequest(new { message = "Role không hợp lệ" });

            // Tạo mới người dùng
            var newUser = new User
            {
                Name = request.Name,
                Email = request.Email,
                RoleId = request.RoleId,
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
                    Role = newUser.Role.Name
                }
            });
        }
        catch (Exception ex)
        {
            return StatusCode(500, new { message = ex.Message });
        }
    }



    //[HttpGet("GetUsersByRole/{roleName}")]
    //public async Task<IActionResult> GetUsersByRole(string roleName)
    //{
    //    try
    //    {
    //        // Chuẩn hóa roleName
    //        roleName = roleName.Trim().ToLower();

    //        // Tạo khóa cache dựa trên roleName
    //        string cacheKey = $"UsersByRole_{roleName}";

    //        // Kiểm tra dữ liệu trong cache Redis
    //        var cachedData = await _distributedCache.GetStringAsync(cacheKey);
    //        if (!string.IsNullOrEmpty(cachedData))
    //        {
    //            // Deserialize dữ liệu từ Redis và trả về
    //            var cachedResponse = JsonSerializer.Deserialize<object>(cachedData);
    //            return Ok(cachedResponse);
    //        }

    //        // Truy vấn cơ sở dữ liệu nếu không có trong cache
    //        var users = await _context.Users
    //            .Include(u => u.Role)
    //            .Include(u => u.Addresses)
    //            .Where(u => u.Role.Name.ToLower() == roleName)
    //            .Select(u => new
    //            {
    //                u.Id,
    //                u.Name,
    //                u.Email,
    //                Role = u.Role.Name,
    //                Addresses = u.Addresses.Select(a => new
    //                {
    //                    a.Street,
    //                    a.City,
    //                    a.District,
    //                    FullAddress = $"{a.Street}, {a.District}, {a.City}"
    //                }).ToList(),
    //                AddressCount = u.Addresses.Count
    //            })
    //            .ToListAsync();

    //        // Kiểm tra nếu không có người dùng
    //        if (!users.Any())
    //        {
    //            return NotFound(new { message = $"Không tìm thấy người dùng nào với role '{roleName}'" });
    //        }

    //        // Tạo thông tin tổng hợp
    //        var response = new
    //        {
    //            RoleName = roleName,
    //            TotalUsers = users.Count,
    //            Users = users
    //        };

    //        // Lưu kết quả vào Redis Cache
    //        var serializedData = JsonSerializer.Serialize(response);
    //        await _distributedCache.SetStringAsync(
    //            cacheKey,
    //            serializedData,
    //            new DistributedCacheEntryOptions
    //            {
    //                AbsoluteExpirationRelativeToNow = TimeSpan.FromMinutes(10)
    //            });

    //        return Ok(response);
    //    }
    //    catch (Exception ex)
    //    {
    //        return StatusCode(500, new { message = ex.Message });
    //    }
    //}

    [HttpGet("SearchUsers")]
    public async Task<IActionResult> SearchUsers(
        [FromQuery] string? searchTerm,
        [FromQuery] string? city,
        [FromQuery] string? roleName)
    {
        try
        {
            // Tạo cache key từ các tham số
            string cacheKey = $"SearchUsers_{searchTerm?.Trim().ToLower() ?? "null"}_" +
                              $"{city?.Trim().ToLower() ?? "null"}_" +
                              $"{roleName?.Trim().ToLower() ?? "null"}";

            // Kiểm tra Redis cache
            var cachedData = await _distributedCache.GetStringAsync(cacheKey);
            if (!string.IsNullOrEmpty(cachedData))
            {
                var cachedResponse = JsonSerializer.Deserialize<object>(cachedData);
                return Ok(cachedResponse);
            }

            // Truy vấn cơ sở dữ liệu nếu không có trong cache
            var query = _context.Users
                .Include(u => u.Role)
                .Include(u => u.Addresses)
                .AsQueryable();

            // Tìm theo searchTerm (name hoặc email)
            if (!string.IsNullOrEmpty(searchTerm))
            {
                searchTerm = searchTerm.Trim().ToLower();
                query = query.Where(u =>
                    u.Name.ToLower().Contains(searchTerm) ||
                    u.Email.ToLower().Contains(searchTerm));
            }

            // Tìm theo thành phố
            if (!string.IsNullOrEmpty(city))
            {
                city = city.Trim().ToLower();
                query = query.Where(u =>
                    u.Addresses.Any(a => a.City.ToLower().Contains(city)));
            }

            // Tìm theo role name
            if (!string.IsNullOrEmpty(roleName))
            {
                roleName = roleName.Trim().ToLower();
                query = query.Where(u => u.Role.Name.ToLower() == roleName);
            }

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
                    SearchTerm = searchTerm,
                    City = city,
                    RoleName = roleName
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
                    AbsoluteExpirationRelativeToNow = TimeSpan.FromMinutes(10) // Cache tồn tại trong 10 phút
                });

            return Ok(response);
        }
        catch (Exception ex)
        {
            return StatusCode(500, new { message = ex.Message });
        }
    }


    [HttpGet("GetAvailableRoles")]
    public async Task<IActionResult> GetAvailableRoles()
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
            user.UpdatedAt = DateTime.Now;

            await _context.SaveChangesAsync();

            // Xóa cache liên quan đến người dùng và danh sách vai trò
            string userCacheKey = $"UserDetails_{userId}";
            string roleCacheKey = $"UsersByRole_{user.Role.Id}";

            // Xóa cache trong Redis
            await _distributedCache.RemoveAsync(userCacheKey);
            await _distributedCache.RemoveAsync(roleCacheKey);

            // Trả về kết quả sau khi cập nhật
            return Ok(new
            {
                message = "Cập nhật thành công",
                user = new
                {
                    user.Id,
                    user.Name,
                    user.Email,
                    Role = user.Role.Id
                }
            });
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
                    newAddress.IsDefault
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

    [HttpDelete("address/{addressId}")]
    public async Task<IActionResult> DeleteAddress(int addressId)
    {
        try
        {
            var address = await _context.Addresses
                .Include(a => a.User)
                .FirstOrDefaultAsync(a => a.Id == addressId);

            if (address == null)
                return NotFound(new { message = "Không tìm thấy địa chỉ" });

            _context.Addresses.Remove(address);
            await _context.SaveChangesAsync();

            // Xóa cache liên quan đến người dùng và thành phố
            string userCacheKey = $"UserDetails_{address.UserId}";
            string cityCacheKey = $"SearchUsers_city_{address.City.ToLower()}";

            await _distributedCache.RemoveAsync(userCacheKey);
            await _distributedCache.RemoveAsync(cityCacheKey);

            // Trả về kết quả sau khi xóa
            return Ok(new { message = "Xóa địa chỉ thành công" });
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