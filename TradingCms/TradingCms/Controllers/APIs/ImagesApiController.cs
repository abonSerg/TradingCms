using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using TradingCms.Data;
using TradingCms.Data.Access.Repositories;
using TradingCms.Data.Access.RepositoryExtensions;
using TradingCms.Extensions;

namespace TradingCms.Controllers.APIs
{
    [RoutePrefix("api/Images")]
    public class ImagesApiController : ApiController
    {
        public IRepository<ProductImages> ProductImagesRepository { get; set; }
        public IRepository<Category> CategoryRepository { get; set; }

        [Route("ProductImage/{productId}")]
        public HttpResponseMessage GetProductImage(int productId)
        {
            // Check if exist
            var productImage = ProductImagesRepository.GetByProductId(productId).FirstOrDefault();
            if (productImage == null || productImage.Img == null)
                return new HttpResponseMessage(HttpStatusCode.NotFound);

            return this.GetImageResponseMessage(productImage.ImgMimeType, productImage.Img);
        }

        [Route("CategoryImage/{id}")]
        public HttpResponseMessage GetCategoryImage(int id)
        {
            // Check if exist
            var category = CategoryRepository.Find(id);
            if (category == null || category.Img == null)
                return new HttpResponseMessage(HttpStatusCode.NotFound);

            return this.GetImageResponseMessage(category.ImgMimeType, category.Img);
        }
    }
}