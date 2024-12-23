using Ex_Redis.API.Redises.Interfaces;
using Ex_Redis.Data.Entities;
using Ex_Redis.Data;
using Microsoft.EntityFrameworkCore;
using Ex_Redis.API.Services.Interfaces;

namespace Ex_Redis.API.Services.Implements
{
	public class GenreService : IGenreService
	{
		private readonly ExRedisDbContext _context;
		private readonly ICacheService _cacheService;
		private const string CacheKey = "genres";

		public GenreService(ExRedisDbContext context, ICacheService cacheService)
		{
			_context = context;
			_cacheService = cacheService;
		}

		public async Task<IEnumerable<Genre>> GetAllAsync()
		{
			var cachedGenres = await _cacheService.GetAsync<IEnumerable<Genre>>(CacheKey);
			if (cachedGenres != null) return cachedGenres;

			var Genres = await _context.Genre.ToListAsync();
			await _cacheService.SetAsync(CacheKey, Genres, TimeSpan.FromMinutes(10));
			return Genres;
		} 

    }
}
