using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;
using NHibernate.Util;
using TradingCms.Controllers.APIs;
using TradingCms.Data;
using TradingCms.Data.Access.Repositories;
using TradingCms.DTOs;

namespace TradingCms.Tests.Controllers.APIs
{
    [TestClass]
    public class OrderApiControllerTest
    {
        private OrderApiController _orderApiController;
        private Mock<IRepository<Product>> _productRepositoryMock;
        private Mock<IRepository<Order>> _orderRepositoryMock;
        private Mock<IRepository<OrdersToProducts>> _ordersToProductsRepositoryMock;
        private List<Product> _products;
        private List<Order> _orders;
        private List<OrdersToProducts> _ordersToProducts;
        private CreateOrderDto _createdOrder;
        private const string CreatedOrderComment = "created order comment";
        private int _ordersCount;

        [TestInitialize]
        public void Init()
        {
            // Arrange
            _productRepositoryMock = new Mock<IRepository<Product>>();
            _orderRepositoryMock = new Mock<IRepository<Order>>();
            _ordersToProductsRepositoryMock = new Mock<IRepository<OrdersToProducts>>();
            _orderApiController = new OrderApiController()
            {
                ProductRepository = _productRepositoryMock.Object,
                OrderRepository = _orderRepositoryMock.Object,
                OrdersToProductsRepository = _ordersToProductsRepositoryMock.Object
            };

            _createdOrder = new CreateOrderDto()
            {
                Comments = CreatedOrderComment,
                ProductIdList = new List<int>() { 2, 3 }
            };

            SetupProductRepository();
            SetupOrderRepository();
            SetupOrdersToProductsRepository();
        }

        [TestMethod]
        public void Assert_CreateOrder()
        {
            // Act
            var res = _orderApiController.Create(_createdOrder);
            var createdOrder = _orders.SingleOrDefault(order => order.Comments == CreatedOrderComment);
            var isPriceSetted = _ordersToProducts.Where(o => o.OrderId == createdOrder.Id).All(o => o.Price == o.Product.Price);

            // Assert
            Assert.IsTrue(res);
            Assert.IsTrue(_orders.Count() - 1 == _ordersCount);
            Assert.IsNotNull(createdOrder);
            Assert.IsTrue(isPriceSetted);
        }

        private void SetupProductRepository()
        {
            _products = new List<Product>
            {
                new Product()
                {
                    Id = 1,
                    Price = 100
                },
                new Product()
                {
                    Id = 2,
                    Price = 200
                },
                new Product()
                {
                    Id = 3,
                    Price = 300
                }
            };

            _productRepositoryMock.Setup(repository => repository.Items).Returns(_products.AsQueryable());
        }

        private void SetupOrderRepository()
        {
            _orders = new List<Order>
            {
                new Order()
                {
                    Id = 1,
                    Comments = "comment 1"
                },
                new Order()
                {
                    Id = 2,
                    Comments = "comment 2"
                },
                new Order()
                {
                    Id = 3,
                    Comments = "comment 3"
                }
            };

            _ordersCount = _orders.Count();
            _orderRepositoryMock.Setup(repository => repository.Add(It.IsAny<Order>())).Returns((Order order) =>
            {
                _orders.Add(order);
                order.Id = _orders.Count;
                order.Products.ForEach(product => _ordersToProducts.Add(new OrdersToProducts()
                {
                    OrderId = order.Id,
                    Order = order,
                    ProductId = product.Id,
                    Product = product
                }));

                return true;
            });
            _orderRepositoryMock.Setup(repository => repository.Items).Returns(_orders.AsQueryable());
        }

        private void SetupOrdersToProductsRepository()
        {
            _ordersToProducts = new List<OrdersToProducts>
            {
                new OrdersToProducts()
                {
                    Id = 1,
                    OrderId = 1,
                    ProductId = 1
                },
                new OrdersToProducts()
                {
                    Id = 2,
                    OrderId = 1,
                    ProductId = 2
                },
            };

            _ordersToProductsRepositoryMock.Setup(repository => repository.Items).Returns(_ordersToProducts.AsQueryable());
        }
    }
}
