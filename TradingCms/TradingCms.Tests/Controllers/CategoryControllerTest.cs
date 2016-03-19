using System.Web.Mvc;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using TradingCms.Controllers;

namespace TradingCms.Tests.Controllers
{
    [TestClass]
    public class CategoryControllerTest
    {
        [TestMethod]
        public void Index()
        {
            CategoryController categoryController = new CategoryController();

            ViewResult result = categoryController.Index() as ViewResult;

            Assert.IsNotNull(result.Model);
        }

        [TestMethod]
        public void Details()
        {
            CategoryController categoryController = new CategoryController();

            ViewResult result = categoryController.Details(1) as ViewResult;

            Assert.IsNotNull(result.Model);
        }
    }
}
