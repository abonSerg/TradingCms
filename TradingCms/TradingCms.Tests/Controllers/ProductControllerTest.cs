using System.Web.Mvc;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using TradingCms.Controllers;

namespace TradingCms.Tests.Controllers
{
    [TestClass]
    public class ProductControllerTest
    {
        [TestMethod]
        public void Index()
        {
            ProductController productController = new ProductController();

            ViewResult result = productController.Index() as ViewResult;

            Assert.IsNotNull(result.Model);
        }

        [TestMethod]
        public void Details()
        {
            ProductController productController = new ProductController();

            ViewResult result = productController.Details(1) as ViewResult;

            Assert.IsNotNull(result.Model);
        }
    }
}
