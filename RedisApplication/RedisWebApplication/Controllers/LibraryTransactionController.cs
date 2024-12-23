using Microsoft.AspNetCore.Mvc;
using RedisWebApplication.Models;

namespace RedisWebApplication.Controllers
{
    public class LibraryTransactionController : Controller
    {
        public IActionResult TransactionList()
        {
            ViewBag.ApiUrl = ApiUrls.ApiUrl2;
            return View();
        }

        public IActionResult _transactionlist()
        {
            ViewBag.ApiUrl2 = ApiUrls.ApiUrl2;
            ViewBag.ApiUrl = ApiUrls.ApiUrl;
            return View();
        }
    }
}
