using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using TradingCms.Data;
using TradingCms.Data.Access.Repositories;
using TradingCms.Data.Access.RepositoryExtensions;
using TradingCms.DTOs;
using TradingCms.Extensions.ConvertExtensions;

namespace TradingCms.Controllers.APIs
{
    [RoutePrefix("api/Product")]
    public class ProductApiController : ApiController
    {
        public IRepository<Product> ProductRepository { get; set; }

        [Route("GetTopProducts/{count}")]
        public IEnumerable<ProductDTO> GetTopProducts(int count)
        {
            var topProducts = ProductRepository.GetTopProducts(count).ToList().ToProductDto();
            return topProducts;
        }

        [Route("GetNewProducts/{count}")]
        public IEnumerable<ProductDTO> GetNewProducts(int count)
        {
            var newProducts = ProductRepository.GetNewProducts(count).ToProductDto();
            return newProducts;
        }
    }
}
