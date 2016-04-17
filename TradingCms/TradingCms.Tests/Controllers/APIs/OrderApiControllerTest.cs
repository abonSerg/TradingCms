using System.Collections.Generic;
using System.Linq;
using System.Web.Http.Results;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;
using NHibernate.Util;
using TradingCms.Controllers.APIs;
using TradingCms.Data;
using TradingCms.Data.Access.Repositories;
using TradingCms.DTOs;
using TradingCms.Extensions.ConvertExtensions;
using TradingCms.Tests.Helpers;

namespace TradingCms.Tests.Controllers.APIs
{
    [TestClass]
    public class OrderApiControllerTest
    {
        private OrderApiController _orderApiController;
        private Mock<IRepository<Product>> _productRepositoryMock;
        private Mock<IRepository<Order>> _orderRepositoryMock;
        private Mock<IRepository<OrdersToProducts>> _ordersToProductsRepositoryMock;
        private List<Order> _orders;
        private List<OrdersToProducts> _ordersToProducts;
        private Order _createdOrder;
        private OrderCreatedDto _orderCreatedDtoWithoutProducts;
        
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

            _createdOrder = new Order()
            {
                Comments = "created order comment",
                DeliveryTypeId = 1,
                DeliveryAddressId = 2,
                IsActive = true,
                PaymentTypeId = 3,
                Products = new List<Product>()
                {
                    new Product() {Id = 1},
                    new Product() {Id = 2},
                    new Product() {Id = 3}
                }
            };

            _orderCreatedDtoWithoutProducts = new OrderCreatedDto()
            {
                Comments = "created order comment",
                DeliveryTypeId = 1,
                DeliveryAddressId = 2,
                PaymentTypeId = 3,
                ProductIdList = new List<int>()
            };

            SetupProductRepository();
            SetupOrderRepository();
            SetupOrdersToProductsRepository();
        }

        [TestMethod]
        public void Assert_CreateOrder()
        {
            // Act
            var orderResponse = _orderApiController.Create(_createdOrder.ToCreatedOrderDto());
            var createdOrder = _orders.LastOrDefault();
            if (createdOrder != null)
            {
                _createdOrder.Id = createdOrder.Id;
                _createdOrder.CreateDate = createdOrder.CreateDate;
                _createdOrder.UserId = createdOrder.UserId;
            }
            var isPriceSet = createdOrder != null && _ordersToProducts
                .Where(orderToProducts => orderToProducts.OrderId == createdOrder.Id)
                .All(orderToProducts => orderToProducts.Price == orderToProducts.Product.Price);

            // Assert
            Assert.IsInstanceOfType(orderResponse, typeof(OkResult));
            Assert.IsNotNull(createdOrder);
            Assert.IsTrue(new EntityComparer<Order>().Equals(createdOrder, _createdOrder, new[] { "Id", "CreateDate", "UserId", "Products" }));
            Assert.AreEqual(_createdOrder.Products.Count, createdOrder.Products.Count);
            Assert.IsTrue(isPriceSet);
        }

        [TestMethod]
        public void Assert_CreateOrderWithoutProducts()
        {
            // Act
            var orderResponse = _orderApiController.Create(_orderCreatedDtoWithoutProducts);

            // Assert
            Assert.IsInstanceOfType(orderResponse, typeof(InvalidModelStateResult));
        }

        private void SetupProductRepository()
        {
            var productsList = new List<Product>()
            {
                new Product() {Id = 1, Price = 100},
                new Product() {Id = 2, Price = 200},
                new Product() {Id = 3, Price = 300}
            };

            _productRepositoryMock.Setup(repository => repository.Items).Returns(productsList.AsQueryable());
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
