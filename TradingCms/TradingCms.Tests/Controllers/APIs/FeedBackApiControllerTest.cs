using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;
using TradingCms.Controllers.APIs;
using TradingCms.Data;
using TradingCms.Data.Access.Repositories;
using TradingCms.Tests.Helpers;

namespace TradingCms.Tests.Controllers.APIs
{
    [TestClass]
    public class FeedBackApiControllerTest
    {
        private FeedBackApiController _feedBackApiController;
        private Mock<IRepository<FeedBack>> _feedbackRepositoryMock;
        private IEnumerable<FeedBack> _feedBacks;
        private const int productId = 1;

        [TestInitialize]
        public void Init()
        {
            // Arrange
            _feedbackRepositoryMock = new Mock<IRepository<FeedBack>>();
            _feedBackApiController = new FeedBackApiController { FeedbackRepository = _feedbackRepositoryMock.Object };

            _feedBacks = new List<FeedBack>
            {
                new FeedBack { Id = 1, ProductId = 1, Text = "Text1"},
                new FeedBack { Id = 2, ProductId = 2, Text = "Text2" },
                new FeedBack { Id = 3, ProductId = 1, Text = "Text3" }
            };

            _feedbackRepositoryMock.Setup(repository => repository.Items).Returns(_feedBacks.AsQueryable());
        }

        [TestMethod]
        public void Assert_ReturnProductFeedbacks()
        {
            var _expectedfeedBacks = new List<FeedBack>
            {
                new FeedBack { Id = 1, ProductId = 1, Text = "Text1"},
                new FeedBack { Id = 3, ProductId = 1, Text = "Text3" }
            };

            // Act
            var feedBacksCount = _feedBackApiController.GetProductFeedbacks(productId).ToList();

            // Assert
            Assert.IsTrue(feedBacksCount.SequenceEqual(_expectedfeedBacks, new EntityComparer<FeedBack>()));
        }
    }
}
