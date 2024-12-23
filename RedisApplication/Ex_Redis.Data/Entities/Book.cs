namespace Ex_Redis.Data.Entities
{
	public class Book
	{
		public int Id { get; set; }

		public string? Title { get; set; }

		public string? Author { get; set; }

		public string? ISBN { get; set; }
        public string? Abstract { get; set; }
        public int? GenreId { get; set; }
        
        public int? PublishYear { get; set; }
		public int? Quantity { get; set; }
		public bool? IsAvailable { get; set; } = true; 
        public Genre? Genre { get; set; }
        public virtual ICollection<BorrowRecord>? BorrowRecords { get; set; } 
    }
    public class BookViewModel
    {
        public int Id { get; set; }

        public string? Title { get; set; }

        public string? Author { get; set; }

        public string? ISBN { get; set; }
        public string? Abstract { get; set; }
        public int? GenreId { get; set; }

        public int? PublishYear { get; set; }
        public int? Quantity { get; set; }
        public bool? IsAvailable { get; set; } = true;
        public string? GenreName { get; set; } 
    }
}
