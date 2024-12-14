using System.ComponentModel.DataAnnotations;

namespace RedisApplication.Model
{
    public class User
    {
        public int Id { get; set; }

        [Required(ErrorMessage = "Tên không được để trống")]
        [StringLength(100, ErrorMessage = "Tên không được vượt quá 100 ký tự")]
        public string Name { get; set; }

        [Required(ErrorMessage = "Email không được để trống")]
        [EmailAddress(ErrorMessage = "Địa chỉ email không hợp lệ")]
        [StringLength(100, ErrorMessage = "Email không được vượt quá 100 ký tự")]
        public string Email { get; set; }

        [Required(ErrorMessage = "Role là bắt buộc")]
        public int RoleId { get; set; }
        public bool IsActive { get; set; }
        public Role Role { get; set; }

        public string Password { get; set; }
        public DateTime? CreatedAt { get; set; }
        public DateTime? UpdatedAt { get; set; }
        public ICollection<Address> Addresses { get; set; }
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
        [Required(ErrorMessage = "Tên không được để trống")]
        [StringLength(100, ErrorMessage = "Tên không được vượt quá 100 ký tự")]
        public string Name { get; set; }

        [Required(ErrorMessage = "Email không được để trống")]
        [EmailAddress(ErrorMessage = "Địa chỉ email không hợp lệ")]
        public string Email { get; set; }

        [Required(ErrorMessage = "Role là bắt buộc")]
        public int RoleId { get; set; }
        public string Password { get; set; }
    }

}
