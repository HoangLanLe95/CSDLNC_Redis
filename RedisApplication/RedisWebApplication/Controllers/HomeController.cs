using Microsoft.AspNetCore.Mvc;

namespace RedisWebApplication.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            return View();  
        }
    }
}
