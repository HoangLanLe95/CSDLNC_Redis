using Microsoft.AspNetCore.Mvc;
using RedisWebApplication.Models;

namespace RedisWebApplication.Controllers
{
    public class BookController : Controller
    {
        public IActionResult BookList()
        {
            ViewBag.ApiUrl = ApiUrls.ApiUrl2;
            return View();
        }
        public IActionResult _booklist()
        {
            ViewBag.ApiUrl = ApiUrls.ApiUrl2;
            return View();
        }
    }
}
