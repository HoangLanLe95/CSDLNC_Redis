using System.ComponentModel.DataAnnotations;

namespace RedisApplication
{
    public class UserAddressView
    {

        public int Id { get; set; }
        public string UserName { get; set; }
        public string Email { get; set; }
        public string RoleName { get; set; }
        public List<AddressInfo> Addresses { get; set; }
    }

    public class AddressInfo
    {
        public string FullAddress { get; set; }
        public string City { get; set; }
        public int Id { get; set; }
        public Boolean IsActive { get; set; }
    }

    public class UpdateUserRequest
    {
        public string Name { get; set; }
        public string Email { get; set; }
        public int RoleId { get; set; }
    }

    public class UpdateAddressRequest
    {
        public string Street { get; set; }
        public string City { get; set; }
        public string District { get; set; }
        public string PostalCode { get; set; }
        public bool IsDefault { get; set; }
        public Boolean IsActive { get; set; }
    }
     
}
