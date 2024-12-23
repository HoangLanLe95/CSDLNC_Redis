﻿namespace Ex_Redis.API.Redises.Interfaces
{
	public interface ICacheService
	{
		Task<T> GetAsync<T>(string key);
		Task SetAsync<T>(string key, T value, TimeSpan? expiration = null);
		Task RemoveAsync(string key);
		Task<bool> ExistsAsync(string key);
	}
}