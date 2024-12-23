using Ex_Redis.API.Services.Interfaces;
using Ex_Redis.Data.Entities;
using Microsoft.AspNetCore.Mvc;

namespace Ex_Redis.API.Controllers
{
	[ApiController]
	[Route("api/[controller]")]
	public class GenreController : ControllerBase
	{
		private readonly IGenreService _Genreervice;

		public GenreController(IGenreService Genreervice)
		{
			_Genreervice = Genreervice;
		}

		[HttpGet]
		public async Task<ActionResult<IEnumerable<Book>>> GetAll()
		{
			var Genre = await _Genreervice.GetAllAsync();
			return Ok(Genre);
		}

	
	}
}
