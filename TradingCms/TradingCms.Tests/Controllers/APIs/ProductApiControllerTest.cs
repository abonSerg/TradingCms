using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;
using TradingCms.Controllers.APIs;
using TradingCms.Data;
using TradingCms.Data.Access.Repositories;

namespace TradingCms.Tests.Controllers.APIs
{
    [TestClass]
    public class ProductApiControllerTest
    {
        private ProductApiController _productApiController;
        private Mock<IRepository<Product>> _mockProductRepository;
        private IEnumerable<Product> _products;

        private const int TopIdOne = 11;
        private const int TopIdTwo = 5;
        private readonly List<int> _topIds = new List<int>() { TopIdOne, TopIdTwo };
        private const int TestCount = 2;


        private void SetupProductRepository()
        {
            var lang = new Language() { Id = 1, Code = "Ru" };

            var ordersTopOne = new List<Order>()
            {
                new Order() {Id = 1, Products = new List<Product>() {new Product() {Id = TopIdOne}}},
                new Order() {Id = 2, Products = new List<Product>() {new Product() {Id = TopIdOne}}},
                new Order() {Id = 3, Products = new List<Product>() {new Product() {Id = TopIdOne}}}
            };

            var ordersTopTwo = new List<Order>()
            {
                new Order() {Id = 4, Products = new List<Product>() {new Product() {Id = TopIdTwo}}},
                new Order() {Id = 5, Products = new List<Product>() {new Product() {Id = TopIdTwo}}}
            };

            _products = new List<Product>
            {
                new Product() 
                { 
                    Id = TopIdOne, 
                    Price = 4, 
                    ProductTranslations = new List<ProductTranslation>()
                    {
                        new ProductTranslation(){ ProductId = TopIdOne, Description = "Description1", Name = "Name1", Language = lang }
                    },  
                    Orders = ordersTopOne 
                },
                new Product() 
                { 
                    Id = 9, 
                    Price = 4, 
                    ProductTranslations = new List<ProductTranslation>()
                    {
                        new ProductTranslation(){ ProductId = 9, Description = "Description4", Name = "Name4", Language = lang }
                    },  
                    Orders = new List<Order>()
                    {
                        new Order() {Id = 6, Products = new List<Product>() {new Product() {Id = 4}}}
                    }
                },
                new Product() 
                { 
                    Id = 3, 
                    Price = 4, 
                    ProductTranslations = new List<ProductTranslation>()
                    {
                        new ProductTranslation(){ ProductId = 3, Description = "Description3", Name = "Name3", Language = lang }
                    },  
                    Orders = new List<Order>()
                    {
                        new Order() {Id = 7, Products = new List<Product>() {new Product() {Id = 4}}}
                    }
                },
                new Product() 
                { 
                    Id = 6, 
                    Price = 4, 
                    ProductTranslations = new List<ProductTranslation>()
                    {
                        new ProductTranslation(){ ProductId = 6, Description = "Description5", Name = "Name5", Language = lang }
                    },  
                    Orders = new List<Order>()
                    {
                    new Order() {Id = 8, Products = new List<Product>() {new Product() {Id = 4}}}
                    }
                },
                new Product() 
                { 
                    Id = TopIdTwo, 
                    Price = 4, 
                    ProductTranslations = new List<ProductTranslation>()
                    {
                        new ProductTranslation(){ ProductId = TopIdTwo, Description = "Description2", Name = "Name2", Language = lang }
                    },  
                    Orders = ordersTopTwo 
                }
            };

            _mockProductRepository.Setup(repository => repository.Items).Returns(_products.AsQueryable());
        }

        [TestInitialize]
        public void Init()
        {
            // Arrange
            _mockProductRepository = new Mock<IRepository<Product>>();
            _productApiController = new ProductApiController { ProductRepository = _mockProductRepository.Object };

            SetupProductRepository();
        }

        [TestMethod]
        public void Assert_ReturnTopProducts()
        {
            // Act
            var result = _productApiController.GetTopProducts(TestCount);
            int countTopIds = result.Where(p => p.Id == TopIdOne || p.Id == TopIdTwo).ToList().Count;

            // Assert
            Assert.IsTrue(result.Count() == TestCount);
            Assert.IsTrue(_topIds.Count() == countTopIds);
        }
    }
}
