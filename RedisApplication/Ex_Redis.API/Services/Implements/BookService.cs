using Ex_Redis.API.Redises.Interfaces;
using Ex_Redis.Data.Entities;
using Ex_Redis.Data;
using Microsoft.EntityFrameworkCore;
using Ex_Redis.API.Services.Interfaces;

namespace Ex_Redis.API.Services.Implements
{
	public class BookService : IBookService
	{
		private readonly ExRedisDbContext _context;
		private readonly ICacheService _cacheService;
		private const string CacheKey = "books";

		public BookService(ExRedisDbContext context, ICacheService cacheService)
		{
			_context = context;
			_cacheService = cacheService;
		}

		public async Task<IEnumerable<Book>> GetAllAsync()
		{
			var cachedBooks = await _cacheService.GetAsync<IEnumerable<Book>>(CacheKey);
			if (cachedBooks != null) return cachedBooks;

			var books = await _context.Books.ToListAsync();
			await _cacheService.SetAsync(CacheKey, books, TimeSpan.FromMinutes(10));
			return books;
		}

		//public async Task<Book> GetByIdAsync(int id)
		//{
		//	var cacheKey = $"{CacheKey}:{id}";
		//	var cachedBook = await _cacheService.GetAsync<Book>(cacheKey);
		//	if (cachedBook != null) return cachedBook;

		//	var book = await _context.Books.FindAsync(id);
		//	if (book != null)
		//		await _cacheService.SetAsync(cacheKey, book, TimeSpan.FromMinutes(10));
		//	return book;
		//}

		public async Task<Book> CreateAsync(Book book)
		{
			_context.Books.Add(book);
			await _context.SaveChangesAsync();
			await _cacheService.RemoveAsync(CacheKey);
			return book;
		}

		public async Task<Book> UpdateAsync(Book book)
		{
			_context.Entry(book).State = EntityState.Modified;
			await _context.SaveChangesAsync();

			var cacheKey = $"{CacheKey}:{book.Id}";
			await _cacheService.RemoveAsync(CacheKey);
			await _cacheService.RemoveAsync(cacheKey);
			return book;
		}

        //public async Task<bool> DeleteAsync(int id)
        //{
        //	var book = await _context.Books.FindAsync(id);
        //	if (book == null) return false;

        //	_context.Books.Remove(book);
        //	await _context.SaveChangesAsync();

        //	var cacheKey = $"{CacheKey}:{id}";
        //	await _cacheService.RemoveAsync(CacheKey);
        //	await _cacheService.RemoveAsync(cacheKey);
        //	return true;
        //}
        public async Task<bool> DeleteAsync(int id)
        {
            // Tìm sách theo id
            var book = await _context.Books.FindAsync(id);
            if (book == null) return false;

            var borrowRecord = await _context.BorrowRecords
                                              .Where(br => br.BookId == id && br.IsReturned == false)
                                              .FirstOrDefaultAsync();

            if (borrowRecord != null)
            {
                return false;
            }

            _context.Books.Remove(book);
            await _context.SaveChangesAsync();

            var cacheKey = $"{CacheKey}:{id}";
            await _cacheService.RemoveAsync(CacheKey);
            await _cacheService.RemoveAsync(cacheKey);

            return true;
        }


        public async Task<BookViewModel> GetByIdAsync(int id)
        {
            var cacheKey = $"{CacheKey}:{id}";
            var cachedBook = await _cacheService.GetAsync<BookViewModel>(cacheKey);
            if (cachedBook != null) return cachedBook;

            var book = await (from b in _context.Books
                              join g in _context.Genre on b.GenreId equals g.Id into bookGenre
                              from genre in bookGenre.DefaultIfEmpty()
                              where b.Id == id
                              select new BookViewModel
                              {
                                  Id = b.Id,
                                  Title = b.Title,
                                  Author = b.Author,
                                  ISBN = b.ISBN,
                                  Abstract = b.Abstract,
                                  PublishYear = b.PublishYear,
                                  Quantity = b.Quantity,
                                  IsAvailable = b.IsAvailable,
                                  GenreId = b.GenreId,
                                  GenreName = genre.Name  
                              }).FirstOrDefaultAsync();

            if (book != null)
                await _cacheService.SetAsync(cacheKey, book, TimeSpan.FromMinutes(10));

            return book;
        }


        public async Task<IEnumerable<Book>> SearchAsync(string query)
        {
            if (string.IsNullOrWhiteSpace(query))
            { 
                return await _context.Books.ToListAsync();
            }

            var lowerQuery = query.ToLower();

            return await _context.Books
                .Where(b =>
                    b.Title.ToLower().Contains(lowerQuery) ||
                    b.Author.ToLower().Contains(lowerQuery) ||
                    b.PublishYear.ToString().Contains(lowerQuery))
                .ToListAsync();
        }




    }
}
