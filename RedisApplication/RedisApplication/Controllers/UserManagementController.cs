using Microsoft.AspNetCore.Mvc;

[Route("usersmanagement")]
public class UserManagementController : Controller
{
    [HttpGet]
    public IActionResult Index()
    {
        return View();
    }
}
 