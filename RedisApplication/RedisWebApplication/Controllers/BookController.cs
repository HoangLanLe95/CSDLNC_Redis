using Microsoft.AspNetCore.Mvc;
using RedisWebApplication.Models;

namespace RedisWebApplication.Controllers
{
    public class BookController : Controller
    {
        public IActionResult BookList()
        {
            ViewBag.ApiUrl = ApiUrls.ApiUrl;
            return View();
        }
    }
}
