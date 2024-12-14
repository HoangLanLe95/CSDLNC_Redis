using Microsoft.AspNetCore.Mvc;
using RedisWebApplication.Models;

namespace RedisWebApplication.Controllers
{
    public class LibraryTransactionController : Controller
    {
        public IActionResult TransactionList()
        {
            ViewBag.ApiUrl = ApiUrls.ApiUrl;
            return View();
        }
    }
}
