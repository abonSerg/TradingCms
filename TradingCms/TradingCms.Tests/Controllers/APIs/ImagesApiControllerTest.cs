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
    public class ImagesApiControllerTest
    {
        private ImagesApiController _imagesApiController;
        private Mock<IRepository<ProductImages>> _productImagesRepositoryMock;
        private IEnumerable<ProductImages> _productImages;
        private const int NotExistingProductId = 1;
        private const int ExistingProductId = 2;
        private const int ProductIdWithWrongImageMimeType = 3;
        private const int ProductIdWithoutImage = 4;

        [TestInitialize]
        public void Init()
        {
            // Arrange
            _productImagesRepositoryMock = new Mock<IRepository<ProductImages>>();
            _imagesApiController = new ImagesApiController
            {
                ProductImagesRepository = _productImagesRepositoryMock.Object
            };

            _productImages = new List<ProductImages>
            {
                new ProductImages { Id = 1, ProductId = 2,
                    Img = new byte[] { 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20 },
                    ImgMimeType = "image/jpeg"},
                new ProductImages { Id = 2, ProductId = 3,
                    Img = new byte[] { 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20 },
                    ImgMimeType = "idrayv"},
                new ProductImages { Id = 3, ProductId = 4,
                    Img = null,
                    ImgMimeType = "image/jpeg"},
            };

            _productImagesRepositoryMock.Setup(r => r.Items).Returns(_productImages.AsQueryable());
        }

        [TestMethod]
        public void Assert_ReturnProductImage()
        {
            // Act
            var imageResponse = _imagesApiController.GetProductImage(ExistingProductId);

            // Assert
            Assert.IsTrue(imageResponse.IsSuccessStatusCode);
            Assert.IsTrue(Equals(imageResponse.Content.Headers.ContentType,
                System.Net.Http.Headers.MediaTypeHeaderValue.Parse("image/jpeg")));
        }

        [TestMethod]
        public void Assert_NotFoundProduct()
        {
            // Act
            var imageResponse = _imagesApiController.GetProductImage(NotExistingProductId);

            // Assert
            Assert.IsFalse(imageResponse.IsSuccessStatusCode);
        }

        [TestMethod]
        public void Assert_WrongMimeTypeOfProductImage()
        {
            // Act
            var imageResponse = _imagesApiController.GetProductImage(ProductIdWithWrongImageMimeType);

            // Assert
            Assert.IsFalse(imageResponse.IsSuccessStatusCode);
        }

        [TestMethod]
        public void Assert_NotFoundProductImage()
        {
            // Act
            var imageResponse = _imagesApiController.GetProductImage(ProductIdWithoutImage);

            // Assert
            Assert.IsFalse(imageResponse.IsSuccessStatusCode);
        }
    }
}
