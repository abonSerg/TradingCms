using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web.Http;
using TradingCms.Data;
using TradingCms.Data.Access.Repositories;
using TradingCms.Data.Access.RepositoryExtensions;

namespace TradingCms.Controllers.APIs
{
    [RoutePrefix("api/Images")]
    public class ImagesApiController : ApiController
    {
        public IRepository<ProductImages> ProductImagesRepository { get; set; }

        [Route("ProductImage/{productId}")]
        public HttpResponseMessage GetProductImage(int productId)
        {
            // Check if exist
            var productImage = ProductImagesRepository.GetByProductId(productId).FirstOrDefault();
            if (productImage == null || productImage.Img == null)
            {
                return new HttpResponseMessage(HttpStatusCode.NotFound);
            }

            // Check if correct mime type
            MediaTypeHeaderValue mimeTypeHeader;
            try
            {
                mimeTypeHeader = new MediaTypeHeaderValue(productImage.ImgMimeType);
            }
            catch (System.FormatException)
            {
                return new HttpResponseMessage(HttpStatusCode.InternalServerError);
            }

            // Create response
            var result = new HttpResponseMessage(HttpStatusCode.OK)
            {
                Content = new StreamContent(new MemoryStream(productImage.Img))
            };

            result.Content.Headers.ContentType = mimeTypeHeader;
            return result;
        }
    }
}