using System.Linq;
using System.Web.Mvc;
using TradingCms.Data;
using TradingCms.Data.Access;

namespace TradingCms.Controllers
{
    public class FeedBackController : Controller
    {
        public IRepository<FeedBack> FeedbackRepository { get; set; }

        // GET FeedBack
        public ActionResult Index()
        {
            var model = FeedbackRepository.Items.ToList();
            return View(model);
        }

        public ActionResult Details(int? id)
        {
            if (id > 0)
            {
                var feedback = FeedbackRepository.Find(id);
                if (feedback != null)
                    return View(feedback);
            }
            return HttpNotFound();
        }
    }
}
