using System.Linq;
using System.Web.Mvc;
using TradingCms.Data;
using TradingCms.Data.Access;

namespace TradingCms.Controllers
{
    public class ProductController : Controller
    {
        public IRepository<Product> ProductRepository { get; set; }
        // GET: Product
        public ActionResult Index()
        {
            var query = ProductRepository.Items.ToList();
            return View(query);
        }

        public ActionResult Get(int id)
        {
            if (id > 0)
            {
                var product = ProductRepository.Find(id);
                return View(product);
            }
            return HttpNotFound();
        }


    }
}