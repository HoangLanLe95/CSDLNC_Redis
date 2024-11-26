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
    }

    public class UpdateUserRequest
    {
        public string Name { get; set; }
        public int RoleId { get; set; }
    }

    public class UpdateAddressRequest
    {
        public string Street { get; set; }
        public string City { get; set; }
        public string District { get; set; }
        public string PostalCode { get; set; }
        public bool IsDefault { get; set; }
    }

    //public class AddAddressWithUserRequest
    //{
    //    [Required(ErrorMessage = "UserId là bắt buộc")]
    //    public int UserId { get; set; }

    //    [Required(ErrorMessage = "Thông tin địa chỉ là bắt buộc")]
    //    public AddressRequest Address { get; set; }
    //}

    //public class AddressRequest
    //{
    //    [Required(ErrorMessage = "Tên đường là bắt buộc")]
    //    public string Street { get; set; }

    //    [Required(ErrorMessage = "Thành phố là bắt buộc")]
    //    public string City { get; set; }

    //    [Required(ErrorMessage = "Quận/Huyện là bắt buộc")]
    //    public string District { get; set; }

    //    public string PostalCode { get; set; }

    //    public bool IsDefault { get; set; }
    //}
}
