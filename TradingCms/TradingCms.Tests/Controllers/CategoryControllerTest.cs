using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using TradingCms.Controllers;
using Moq;
using TradingCms.Data;
using TradingCms.Data.Access;

namespace TradingCms.Tests.Controllers
{
    [TestClass]
    public class CategoryControllerTest
    {
        private MockRepository _factory;
        private CategoryController _categoryController;
        private Mock<IRepository<Category>> _mockCategoryRepository;

        [TestInitialize]
        public void Init()
        {
            _factory = new MockRepository(MockBehavior.Strict);
            _mockCategoryRepository = _factory.Create<IRepository<Category>>();
            _categoryController = new CategoryController { CategoryRepository = _mockCategoryRepository.Object };
        }

        [TestMethod]
        public void Index()
        {
            var categories = new List<Category>() {new Category()};

            _mockCategoryRepository.Setup(a => a.Items).Returns(categories.AsQueryable());

            var result = _categoryController.Index();

            var model = (result as ViewResult).Model as List<Category>;

            Assert.IsNotNull(model);
        }

        [TestMethod]
        public void Details()
        {
            _mockCategoryRepository.Setup(a => a.Find(It.IsAny<int>())).Returns(new Category());

            var result = _categoryController.Details(1);
            var model = (result as ViewResult).Model as Category;

            Assert.IsNotNull(model);
        }
    }
}
