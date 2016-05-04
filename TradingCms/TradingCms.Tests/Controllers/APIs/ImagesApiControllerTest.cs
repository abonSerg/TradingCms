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
        private Mock<IRepository<Category>> _categoryRepositoryMock;
        private const int NotExistentProductId = 1;
        private const int ExistingProductId = 2;
        private const int ProductIdWithWrongImageMimeType = 3;
        private const int ProductIdWithoutImage = 4;
        private const int ExistingCategoryId = 1;
        private const int CategoryIdWithWrongImageMimeType = 2;
        private const int CategoryIdWithoutImage = 3;
        private const int NotExistingCategoryId = 4;

        [TestInitialize]
        public void Init()
        {
            // Arrange
            _productImagesRepositoryMock = new Mock<IRepository<ProductImages>>();
            _categoryRepositoryMock = new Mock<IRepository<Category>>();
            _imagesApiController = new ImagesApiController
            {
                ProductImagesRepository = _productImagesRepositoryMock.Object,
                CategoryRepository = _categoryRepositoryMock.Object
            };

            SetupProductImagesRepository();
            SetupCategoryRepository();
        }

        private void SetupProductImagesRepository()
        {
            var productImages = new List<ProductImages>
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

            _productImagesRepositoryMock.Setup(r => r.Items).Returns(productImages.AsQueryable());
        }

        private void SetupCategoryRepository()
        {
            var categories = new List<Category>
            {
                new Category()
                { 
                    Id = 1, 
                    Img = new byte[] { 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20 },
                    ImgMimeType = "image/jpeg"
                },
                new Category()
                {
                    Id = 2,
                    Img = new byte[] { 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20 },
                    ImgMimeType = "idrayv"
                },
                new Category()
                {
                    Id = 3,
                    Img = null,
                    ImgMimeType = "image/jpeg"
                },
            };

            _categoryRepositoryMock.Setup(a => a.Find(It.IsAny<int>()))
                .Returns<int>(i => categories.Find(category => category.Id == i));
        }


        [TestMethod]
        public void Assert_ImagesApi_ReturnProductImage()
        {
            // Act
            var imageResponse = _imagesApiController.GetProductImage(ExistingProductId);

            // Assert
            Assert.IsTrue(imageResponse.IsSuccessStatusCode);
            Assert.AreEqual(System.Net.Http.Headers.MediaTypeHeaderValue.Parse("image/jpeg"),
                imageResponse.Content.Headers.ContentType);
        }

        [TestMethod]
        public void Assert_ImagesApi_NotFoundProduct()
        {
            // Act
            var imageResponse = _imagesApiController.GetProductImage(NotExistentProductId);

            // Assert
            Assert.IsFalse(imageResponse.IsSuccessStatusCode);
        }

        [TestMethod]
        public void Assert_ImagesApi_WrongMimeTypeOfProductImage()
        {
            // Act
            var imageResponse = _imagesApiController.GetProductImage(ProductIdWithWrongImageMimeType);

            // Assert
            Assert.IsFalse(imageResponse.IsSuccessStatusCode);
        }

        [TestMethod]
        public void Assert_ImagesApi_NotFoundProductImage()
        {
            // Act
            var imageResponse = _imagesApiController.GetProductImage(ProductIdWithoutImage);

            // Assert
            Assert.IsFalse(imageResponse.IsSuccessStatusCode);
        }

        [TestMethod]
        public void Assert_ImagesApi_ReturnCategoryImage()
        {
            // Act
            var imageResponse = _imagesApiController.GetCategoryImage(ExistingCategoryId);

            // Assert
            Assert.IsTrue(imageResponse.IsSuccessStatusCode);
            Assert.AreEqual(System.Net.Http.Headers.MediaTypeHeaderValue.Parse("image/jpeg"),
                imageResponse.Content.Headers.ContentType);
        }

        [TestMethod]
        public void Assert_ImagesApi_NotFoundCategory()
        {
            // Act
            var imageResponse = _imagesApiController.GetCategoryImage(NotExistingCategoryId);

            // Assert
            Assert.IsFalse(imageResponse.IsSuccessStatusCode);
        }

        [TestMethod]
        public void Assert_ImagesApi_WrongMimeTypeOfCategoryImage()
        {
            // Act
            var imageResponse = _imagesApiController.GetCategoryImage(CategoryIdWithWrongImageMimeType);

            // Assert
            Assert.IsFalse(imageResponse.IsSuccessStatusCode);
        }

        [TestMethod]
        public void Assert_ImagesApi_NotFoundCategoryImage()
        {
            // Act
            var imageResponse = _imagesApiController.GetCategoryImage(CategoryIdWithoutImage);

            // Assert
            Assert.IsFalse(imageResponse.IsSuccessStatusCode);
        }
    }
}
