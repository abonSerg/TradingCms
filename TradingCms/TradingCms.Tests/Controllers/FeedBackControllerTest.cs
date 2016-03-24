using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;
using TradingCms.Controllers;
using TradingCms.Data;
using TradingCms.Data.Access.Repositories;

namespace TradingCms.Tests.Controllers
{
    [TestClass]
    public class FeedBackControllerTest
    {
        private FeedBackController _feedbackController;
        private Mock<IRepository<FeedBack>> _mockFeedbackRepository;
        private IEnumerable<FeedBack> _feedBacks;
        private const int TestProductId = 1;

        [TestInitialize]
        public void Init()
        {
            // Arrange
            _mockFeedbackRepository = new Mock<IRepository<FeedBack>>();
            _feedbackController = new FeedBackController { FeedbackRepository = _mockFeedbackRepository.Object };

            _feedBacks = new List<FeedBack>
            {
                new FeedBack { Id = 1, ProductId = 1 },
                new FeedBack { Id = 2, ProductId = 2 },
                new FeedBack { Id = 3, ProductId = 1 }
            };

            _mockFeedbackRepository.Setup(repository => repository.Items).Returns(_feedBacks.AsQueryable());
        }

        [TestMethod]
        public void Assert_ReturnProductFeedbacks()
        {
            // Act
            var result = _feedbackController.GetProductFeedbacks(TestProductId).Count();
            var expected = _feedBacks.Count(f => f.ProductId == TestProductId);

            // Assert
            Assert.IsTrue(result == expected);
        }
    }
}
