using System.Linq;
using System.Web.Mvc;
using TradingCms.Data;
using TradingCms.Data.Access;

namespace TradingCms.Controllers
{
    public class CategoryController : Controller
    {
        public IRepository<Category> CategoryRepository { get; set; }

        // GET: Category
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult GetAll()
        {
            var model = CategoryRepository.Items.ToList();
            return View(model);
        }
    }
}