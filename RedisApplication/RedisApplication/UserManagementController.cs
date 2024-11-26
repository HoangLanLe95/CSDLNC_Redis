using Microsoft.AspNetCore.Mvc;

[Route("users-management")]
public class UserManagementController : Controller
{
    [HttpGet]
    public IActionResult Index()
    {
        return View();
    }
}
 