using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using TradingCms.Controllers;
using Moq;
using TradingCms.Data;
using TradingCms.Data.Access.Repositories;
using TradingCms.DTOs;
using TradingCms.Extensions.ConvertExtensions;

namespace TradingCms.Tests.Controllers
{
    [TestClass]
    public class CategoryControllerTest
    {
        private List<Category> _categories;
        private CategoryController _categoryController;
        private Mock<IRepository<Category>> _mockCategoryRepository;

        const int TestValue = 1;
        const int NonExistentCategoryId = 999;

        [TestInitialize]
        public void Init()
        {
            _mockCategoryRepository = new Mock<IRepository<Category>>();

            _categoryController = new CategoryController { CategoryRepository = _mockCategoryRepository.Object };

            _categories = new List<Category>()
            {
                new Category() { Id = 1 },
                new Category() { Id = 1, TopId = 1 },
                new Category() { Id = 2, TopId = 1 },
                new Category() { Id = 3, TopId = 1 }
            };

            _mockCategoryRepository.Setup(a => a.Items).Returns(_categories.AsQueryable());
            _mockCategoryRepository.Setup(a => a.Find(It.IsAny<int>())).Returns(new Category() { Id = TestValue });
            _mockCategoryRepository.Setup(a => a.Find(It.Is<int>(c => c == NonExistentCategoryId))).Returns(() => null);
        }

        [TestMethod]
        public void Assert_Index_ViewModelIsNotNull()
        {
            var categories = _categoryController.Index();
            var model = (categories as ViewResult).Model as IEnumerable<CategoryDTO>;

            Assert.IsNotNull(model);
        }

        [TestMethod]
        public void Assert_DetailsReturnCategoryById()
        {
            var category = _categoryController.Details(TestValue);
            var model = (category as ViewResult).Model as Category;

            Assert.IsTrue(model.Id == TestValue);
        }

        [TestMethod]
        public void Assert_Subcategories_ViewModelIsNotNull()
        {
            var subcategoriesResponse = _categoryController.Subcategories(1);
            var subcategories = (subcategoriesResponse as ViewResult).Model as IEnumerable<CategoryDTO>;

            Assert.IsNotNull(subcategories);
        }

        [TestMethod]
        public void Assert_Subcategories_ReturnSubcategoriesByTopCategoryId()
        {
            var expectedCubcategories = _categories.Where(category => category.TopId == 1)
                .Select(category => category.ToCategoryDto());

            var subcategoriesResponse = _categoryController.Subcategories(1);
            var subcategories = (subcategoriesResponse as ViewResult).Model as IEnumerable<CategoryDTO>;

            Assert.IsTrue(subcategories.SequenceEqual(expectedCubcategories));
        }

        [TestMethod]
        public void Assert_Subcategories_InvalidCategoryId()
        {
            var subcategoriesResponse = _categoryController.Subcategories(NonExistentCategoryId);

            Assert.IsInstanceOfType(subcategoriesResponse, typeof(HttpStatusCodeResult));
        }
    }
}
