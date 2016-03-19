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
        private MockRepository _factory;
        private ProductController _productController;
        private Mock<IRepository<Product>> _mockProductRepository;

        [TestInitialize]
        public void Init()
        {
            _factory = new MockRepository(MockBehavior.Strict);
            _mockProductRepository = _factory.Create<IRepository<Product>>();
            _productController = new ProductController { ProductRepository = _mockProductRepository.Object };
        }

        [TestMethod]
        public void Index()
        {
            var products = new List<Product>() { new Product() };

            _mockProductRepository.Setup(a => a.Items).Returns(products.AsQueryable());

            var result = _productController.Index();

            var model = (result as ViewResult).Model as List<Product>;

            Assert.IsNotNull(model);
        }

        [TestMethod]
        public void Details()
        {
            _mockProductRepository.Setup(a => a.Find(It.IsAny<int>())).Returns(new Product());

            var result = _productController.Details(1);
            var model = (result as ViewResult).Model as Product;

            Assert.IsNotNull(model);
        }
    }
}
