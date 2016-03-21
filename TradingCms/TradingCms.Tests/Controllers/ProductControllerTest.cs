using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;
using TradingCms.Controllers;
using TradingCms.Data;
using TradingCms.Data.Access;

namespace TradingCms.Tests.Controllers
{
    [TestClass]
    public class ProductControllerTest
    {
        private ProductController _productController;
        private Mock<IRepository<Product>> _mockProductRepository;
        const int TestValue = 1;

        [TestInitialize]
        public void Init()
        {
            _mockProductRepository = new Mock<IRepository<Product>>();
            _productController = new ProductController { ProductRepository = _mockProductRepository.Object };

            var products = new List<Product>() { new Product() };
            _mockProductRepository.Setup(a => a.Items).Returns(products.AsQueryable());
            _mockProductRepository.Setup(a => a.Find(It.IsAny<int>())).Returns(new Product() { Id = TestValue });
        }

        [TestMethod]
        public void Assert_Index_ViewModelIsNotNull()
        {
            var result = _productController.Index();
            var model = (result as ViewResult).Model as List<Product>;

            Assert.IsNotNull(model);
        }

        [TestMethod]
        public void Assert_DetailsReturnProductById()
        {
            var result = _productController.Details(TestValue);
            var model = (result as ViewResult).Model as Product;

            Assert.IsTrue(model.Id == TestValue);
        }
    }
}
