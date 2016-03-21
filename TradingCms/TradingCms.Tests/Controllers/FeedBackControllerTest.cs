using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;
using TradingCms.Controllers;
using TradingCms.Data;
using TradingCms.Data.Access;

namespace TradingCms.Tests.Controllers
{
    [TestClass]
    public class FeedBackControllerTest
    {
        private FeedBackController _feedbackController;
        private MockRepository _factory;
        private Mock<IRepository<FeedBack>> _mockFeedbackRepository;
        private IEnumerable<FeedBack> _feedBacks;
        private const int TestId = 1;

        [TestInitialize]
        public void Init()
        {
            // Arrange
            _factory = new MockRepository(MockBehavior.Strict);
            _mockFeedbackRepository = _factory.Create<IRepository<FeedBack>>();
            _feedbackController = new FeedBackController { FeedbackRepository = _mockFeedbackRepository.Object };

            _feedBacks = new List<FeedBack>
            {
                new FeedBack { Id = 1 },
                new FeedBack { Id = 2 },
                new FeedBack { Id = 3 }
            };

            _mockFeedbackRepository.Setup(repository => repository.Items).Returns(_feedBacks.AsQueryable());
            _mockFeedbackRepository.Setup(repository => repository.Find(It.IsAny<int>())).Returns(new FeedBack { Id = TestId });
        }

        [TestMethod]
        public void Index_ViewModel_NotNull()
        {
            // Act
            var result = _feedbackController.Index();
            var model = ((ViewResult)result).Model;

            // Assert
            Assert.IsNotNull(model);
        }

        [TestMethod]
        public void Details_GetFromRepoById_IsTrue()
        {
            // Act
            var result = _feedbackController.Details(TestId);
            var model = ((ViewResult)result).Model;

            // Assert
            Assert.IsTrue(((FeedBack)model).Id == TestId);
        }
    }
}
