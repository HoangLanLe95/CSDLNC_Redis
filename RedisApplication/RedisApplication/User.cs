
namespace RedisApplication
{
    public class User
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public int RoleId { get; set; }
        public Role Role { get; set; }
        public ICollection<Address> Addresses { get; set; }
        public DateTime UpdatedAt { get; internal set; }
    }

    public class UserDetailsViewModel
    {
        public int Id { get; set; }
        public string UserName { get; set; }
        public string Email { get; set; }
        public string RoleName { get; set; }
        public int RoleId { get; set; }
        public List<AddressInfo> Addresses { get; set; }
    }

    public class AddUserRequest
    {
        public string Name { get; set; }
        public string Email { get; set; }
        public int RoleId { get; set; }
    }


}
