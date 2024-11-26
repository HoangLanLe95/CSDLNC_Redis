
namespace RedisApplication
{
    public class Address
    {
        public int Id { get; set; }
        public string Street { get; set; }
        public string City { get; set; }
        public string District { get; set; }
        public string PostalCode { get; set; }
        public int UserId { get; set; }
        public User User { get; set; }
        public bool IsDefault { get; internal set; }
        public DateTime UpdatedAt { get; internal set; }
        public DateTime CreatedAt { get; internal set; }
    }
}
