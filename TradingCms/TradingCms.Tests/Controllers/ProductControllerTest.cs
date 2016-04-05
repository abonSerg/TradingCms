using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;
using TradingCms.Controllers;
using TradingCms.Data;
using TradingCms.Data.Access.Repositories;

namespace TradingCms.Tests.Controllers
{
    [TestClass]
    public class ProductControllerTest
    {
        private ProductController _productController;
        private Mock<IRepository<Product>> _productRepositoryMock;
        const int TestValueId = 10;
        const int TestValuePrice = 110;
        private IEnumerable<Product> _products;
        private Product _product;
        private readonly DateTime _date1 = DateTime.Now;
        private readonly DateTime _date2 = DateTime.Today;

        [TestInitialize]
        public void Init()
        {
            _productRepositoryMock = new Mock<IRepository<Product>>();
            _productController = new ProductController { ProductRepository = _productRepositoryMock.Object };

            SetupProductRepository();
        }

        [TestMethod]
        public void Assert_Index_ViewModelIsNotNull()
        {
            var products = _productController.Index();
            var model = (products as ViewResult).Model as List<Product>;

            Assert.IsNotNull(model);
        }

        [TestMethod]
        public void Assert_DetailsReturnProductById()
        {
            var product = _productController.Details(TestValueId);
            var model = (product as ViewResult).Model as Product;

            Assert.IsNotNull(model);
            Assert.IsTrue(model.Id == TestValueId);
            Assert.IsTrue(model.Price == TestValuePrice);
            Assert.IsTrue(model.CreateDate == _date2);
        }

        private void SetupProductRepository()
        {
            var lang = new Language() { Id = 1, Code = "Ru" };

            _product = new Product()
            {
                Id = TestValueId,
                Price = TestValuePrice,
                CreateDate = _date2,
                ProductTranslations = new List<ProductTranslation>()
                {
                    new ProductTranslation()
                    {
                        ProductId = TestValueId,
                        Description = "Description10",
                        Name = "Name10",
                        Language = lang
                    }
                }
            };

            _products = new List<Product>
            {
                new Product()
                {
                    Id = 1,
                    Price = 11,
                    CreateDate = _date2,
                    ProductTranslations = new List<ProductTranslation>()
                    {
                        new ProductTranslation(){ ProductId = 1, Description = "Description1", Name = "Name1", Language = lang }
                    }
                },
                new Product()
                {
                    Id = 2,
                    Price = 22,
                    CreateDate = _date2,
                    ProductTranslations = new List<ProductTranslation>()
                    {
                        new ProductTranslation(){ ProductId = 2, Description = "Description2", Name = "Name2", Language = lang }
                    }
                },
                new Product()
                {
                    Id = 3,
                    Price = 33,
                    CreateDate = _date1,
                    ProductTranslations = new List<ProductTranslation>()
                    {
                        new ProductTranslation(){ ProductId = 3, Description = "Description3", Name = "Name3", Language = lang }
                    }
                },
                new Product()
                {
                    Id = 4,
                    Price = 44,
                    CreateDate = _date1,
                    ProductTranslations = new List<ProductTranslation>()
                    {
                        new ProductTranslation(){ ProductId = 4, Description = "Description4", Name = "Name4", Language = lang }
                    }
                },
                new Product()
                {
                    Id = 5,
                    Price = 55,
                    CreateDate =_date2,
                    ProductTranslations = new List<ProductTranslation>()
                    {
                        new ProductTranslation(){ ProductId = 5, Description = "Description5", Name = "Name5", Language = lang }
                    }
                }
            };

            _productRepositoryMock.Setup(a => a.Items).Returns(_products.AsQueryable());
            _productRepositoryMock.Setup(a => a.Find(It.IsAny<int>())).Returns(_product);
        }
    }
}
