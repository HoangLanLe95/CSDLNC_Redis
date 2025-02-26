﻿using Ex_Redis.Data.Entities;

namespace Ex_Redis.API.Services.Interfaces
{
	public interface IBookService
	{
		Task<IEnumerable<Book>> GetAllAsync();
		Task<BookViewModel> GetByIdAsync(int id);
		Task<Book> CreateAsync(Book book);
		Task<Book> UpdateAsync(Book book);
		Task<bool> DeleteAsync(int id);
        Task<IEnumerable<Book>> SearchAsync(string query); 

    }
}
