using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TradingCms.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Title = "Home Page";

            return View();
        }

        public ActionResult Categories()
        {
            ViewBag.Title = "Categories";
            return View();
        }

        public ActionResult Product()
        {
            ViewBag.Title = "Product";
            return View();
        }

        public ActionResult Subcategories()
        {
            ViewBag.Title = "Subcategories";
            return View();
        }

        public ActionResult Registration()
        {
            ViewBag.Title = "Registration";
            return View();
        }
    }
}
