using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using TradingCms.Controllers;
using Moq;
using TradingCms.Data;
using TradingCms.Data.Access.Repositories;

namespace TradingCms.Tests.Controllers
{
    [TestClass]
    public class CategoryControllerTest
    {
        private CategoryController _categoryController;
        private Mock<IRepository<Category>> _mockCategoryRepository;

        const int TestValue = 1;

        [TestInitialize]
        public void Init()
        {
            _mockCategoryRepository = new Mock<IRepository<Category>>();

            _categoryController = new CategoryController { CategoryRepository = _mockCategoryRepository.Object };

            var categories = new List<Category>() { new Category() };

            _mockCategoryRepository.Setup(a => a.Items).Returns(categories.AsQueryable());
            _mockCategoryRepository.Setup(a => a.Find(It.IsAny<int>())).Returns(new Category() { Id = TestValue });
        }

        [TestMethod]
        public void Assert_Index_ViewModelIsNotNull()
        {
            var categories = _categoryController.Index();
            var model = (categories as ViewResult).Model as List<Category>;

            Assert.IsNotNull(model);
        }

        [TestMethod]
        public void Assert_DetailsReturnCategoryById()
        {
            var category = _categoryController.Details(TestValue);
            var model = (category as ViewResult).Model as Category;

            Assert.IsTrue(model.Id == TestValue);
        }
    }
}
