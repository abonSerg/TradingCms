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
    public class FeedBackApiControllerTest
    {
        private FeedBackApiController _feedBackApiController;
        private Mock<IRepository<FeedBack>> _feedbackRepositoryMock;
        private IEnumerable<FeedBack> _feedBacks;
        private const int TestProductId = 1;

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

        // need refactoring to check if resulted feedbacks are for these product
        [TestMethod]
        public void Assert_ReturnProductFeedbacks()
        {
            // Act
            var feedBacksCount = _feedBackApiController.GetProductFeedbacks(TestProductId).Count();
            var expectedFeedBacksCount = _feedBacks.Count(f => f.ProductId == TestProductId);

            // Assert
            Assert.IsTrue(feedBacksCount == expectedFeedBacksCount);
        }
    }
}
