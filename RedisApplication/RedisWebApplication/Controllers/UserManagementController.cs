using Microsoft.AspNetCore.Mvc;
using RedisWebApplication.Models;

namespace RedisWebApplication.Controllers
{
    public class UserManagementController : Controller
    {
        public IActionResult UserList()
        {
            ViewBag.ApiUrl = ApiUrls.ApiUrl;
            return View();
        }
        public IActionResult _userlist()
        {
            ViewBag.ApiUrl = ApiUrls.ApiUrl;
            return View();
        }
    }
}
