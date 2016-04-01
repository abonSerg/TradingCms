using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;
using TradingCms.Controllers.APIs;
using TradingCms.Data;
using TradingCms.Data.Access.Repositories;

namespace TradingCms.Tests.Controllers
{
    [TestClass]
    public class ProductApiControllerTest
    {
        private ProductApiController _productApiController;
        private Mock<IRepository<OrdersToProducts>> _mockOrdersToProductsRepository;
        private IEnumerable<OrdersToProducts> _ordersToProducts;
        
        private const int TopIdOne = 1;
        private const int TopIdTwo = 2;
        private readonly List<int> _topIds = new List<int>() { TopIdOne, TopIdTwo };
        private const int TestCount = 2;

        [TestInitialize]
        public void Init()
        {
            // Arrange
            _mockOrdersToProductsRepository = new Mock<IRepository<OrdersToProducts>>();
            _productApiController = new ProductApiController { OrdersToProductsRepository = _mockOrdersToProductsRepository.Object };

            var lang = new Language() {Id = 1, Code = "RU"};
            
            var productTranslations = new List<ProductTranslation>()
            {
                new ProductTranslation(){ ProductId = 1, Description = "Description1", Name = "Name1", Language = lang },
                new ProductTranslation(){ ProductId = 2, Description = "Description2", Name = "Name2", Language = lang },
                new ProductTranslation(){ ProductId = 3, Description = "Description3", Name = "Name3", Language = lang },
                new ProductTranslation(){ ProductId = 4, Description = "Description4", Name = "Name4", Language = lang },
                new ProductTranslation(){ ProductId = 5, Description = "Description5", Name = "Name5", Language = lang },
            };

            var productImages = new List<ProductImages>()
            {
                new ProductImages() { Path = "Path1", ProductId = 1 },
                new ProductImages() { Path = "Path1", ProductId = 2 },
                new ProductImages() { Path = "Path1", ProductId = 3 },
                new ProductImages() { Path = "Path1", ProductId = 4 },
                new ProductImages() { Path = "Path1", ProductId = 5 },
            };

            _ordersToProducts = new List<OrdersToProducts>
            {
                new OrdersToProducts 
                { 
                    Id = 1, 
                    OrderId = 1, 
                    ProductId = TopIdOne, 
                    Product = new Product() { Id = TopIdOne, Price = 4, ProductTranslations = productTranslations, ProductImages = productImages }
                },
                new OrdersToProducts 
                { 
                    Id = 2, 
                    OrderId = 2, 
                    ProductId = TopIdOne, 
                    Product = new Product() { Id = TopIdOne, Price = 4, ProductTranslations = productTranslations, ProductImages = productImages }
                },
                new OrdersToProducts 
                { 
                    Id = 3, 
                    OrderId = 3, 
                    ProductId = TopIdTwo, 
                    Product = new Product() { Id = TopIdTwo, Price = 4, ProductTranslations = productTranslations, ProductImages = productImages }
                },
                new OrdersToProducts 
                { 
                    Id = 4, 
                    OrderId = 4, 
                    ProductId = TopIdTwo, 
                    Product = new Product() { Id = TopIdTwo, Price = 4, ProductTranslations = productTranslations, ProductImages = productImages }
                },
                new OrdersToProducts 
                { 
                    Id = 5, 
                    OrderId = 5, 
                    ProductId = 3, 
                    Product = new Product() { Id = 3, Price = 4, ProductTranslations = productTranslations, ProductImages = productImages }
                },
            };

            _mockOrdersToProductsRepository.Setup(repository => repository.Items).Returns(_ordersToProducts.AsQueryable());
        }

        [TestMethod]
        public void Assert_ReturnTopProducts()
        {
            // Act
            var result = _productApiController.GetTopProducts(TestCount).Count();

            // Assert
            Assert.IsTrue(result == TestCount);

        }

        [TestMethod]
        public void Assert_ReturnTopProducts_CheckIds()
        {
            // Act
            var result = _productApiController.GetTopProducts(TestCount);
            int countTopIds = result.Count(item => _topIds.Contains(item.Id));

            // Assert
            Assert.IsTrue(_topIds.Count() == countTopIds);
        }
    }
}
