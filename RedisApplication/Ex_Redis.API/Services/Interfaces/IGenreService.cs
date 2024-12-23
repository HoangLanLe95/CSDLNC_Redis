using Ex_Redis.Data.Entities;

namespace Ex_Redis.API.Services.Interfaces
{
	public interface IGenreService
	{
		Task<IEnumerable<Genre>> GetAllAsync(); 
	}
}
