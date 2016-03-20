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
        const int TestValue = 1;

        [TestInitialize]
        public void Init()
        {
            _factory = new MockRepository(MockBehavior.Strict);
            _mockCategoryRepository = _factory.Create<IRepository<Category>>();
            _categoryController = new CategoryController { CategoryRepository = _mockCategoryRepository.Object };

            var categories = new List<Category>() { new Category() };

            _mockCategoryRepository.Setup(a => a.Items).Returns(categories.AsQueryable());
            _mockCategoryRepository.Setup(a => a.Find(It.IsAny<int>())).Returns(new Category() { Id = TestValue });
        }

        [TestMethod]
        public void Index_View_Model_Not_Null()
        {
            var result = _categoryController.Index();
            var model = (result as ViewResult).Model as List<Category>;

            Assert.IsNotNull(model);
        }

        [TestMethod]
        public void Details_Get_From_Repo_By_Id_Is_True()
        {
            var result = _categoryController.Details(TestValue);
            var model = (result as ViewResult).Model as Category;

            Assert.IsTrue(model.Id == TestValue);
        }
    }
}
