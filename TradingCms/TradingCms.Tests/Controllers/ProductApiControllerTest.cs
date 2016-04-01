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
        private Mock<IRepository<Product>> _mockProductRepository;
        private IEnumerable<Product> _products;
        
        private const int TopIdOne = 11;
        private const int TopIdTwo = 5;
        private readonly List<int> _topIds = new List<int>() { TopIdOne, TopIdTwo };
        private const int TestCount = 2;


        private void InitTestData()
        {
            var lang = new Language() { Id = 1, Code = "RU" };

            var productTranslations = new List<ProductTranslation>()
            {
                new ProductTranslation(){ ProductId = TopIdOne, Description = "Description1", Name = "Name1", Language = lang },
                new ProductTranslation(){ ProductId = TopIdTwo, Description = "Description2", Name = "Name2", Language = lang },
                new ProductTranslation(){ ProductId = 3, Description = "Description3", Name = "Name3", Language = lang },
                new ProductTranslation(){ ProductId = 4, Description = "Description4", Name = "Name4", Language = lang },
                new ProductTranslation(){ ProductId = 5, Description = "Description5", Name = "Name5", Language = lang },
            };

            var productImages = new List<ProductImages>()
            {
                new ProductImages() { Path = "Path1", ProductId = TopIdOne },
                new ProductImages() { Path = "Path2", ProductId = TopIdTwo },
                new ProductImages() { Path = "Path3", ProductId = 3 },
                new ProductImages() { Path = "Path4", ProductId = 4 },
                new ProductImages() { Path = "Path5", ProductId = 5 },
            };

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
                new Product() { Id = TopIdOne, Price = 4, ProductTranslations = productTranslations, ProductImages = productImages, Orders = ordersTopOne },
                new Product() { Id = 9, Price = 4, ProductTranslations = productTranslations, ProductImages = productImages, Orders = new List<Order>(){
                    new Order() {Id = 6, Products = new List<Product>() {new Product() {Id = 4}}}
                }},
                new Product() { Id = 3, Price = 4, ProductTranslations = productTranslations, ProductImages = productImages, Orders = new List<Order>(){
                    new Order() {Id = 7, Products = new List<Product>() {new Product() {Id = 4}}}
                }},
                new Product() { Id = 6, Price = 4, ProductTranslations = productTranslations, ProductImages = productImages, Orders = new List<Order>(){
                    new Order() {Id = 8, Products = new List<Product>() {new Product() {Id = 4}}}
                }},
                new Product() { Id = TopIdTwo, Price = 4, ProductTranslations = productTranslations, ProductImages = productImages, Orders = ordersTopTwo }
            };
        }

        [TestInitialize]
        public void Init()
        {
            // Arrange
            _mockProductRepository = new Mock<IRepository<Product>>();
            _productApiController = new ProductApiController { ProductRepository = _mockProductRepository.Object };

            InitTestData();

            _mockProductRepository.Setup(repository => repository.Items).Returns(_products.AsQueryable());
        }

        [TestMethod]
        public void Assert_ReturnTopProducts()
        {
            // Act
            var result = _productApiController.GetTopProducts(TestCount);
            int countTopIds = result.Count(item => _topIds.Contains(item.Id));

            // Assert
            Assert.IsTrue(result.Count() == TestCount);
            Assert.IsTrue(_topIds.Count() == countTopIds);
        }
    }
}
