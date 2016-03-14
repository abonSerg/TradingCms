using System.Collections.Generic;
using System.Web.Http;
using TradingCms.Data;
using TradingCms.Data.Access;

namespace TradingCms.Controllers
{
    public class ProductsController : ApiController
    {
        public IRepository<Product> ProductRepository { get; set; }

        // GET api/FeedBack
        public Product Get(int id)
        {
            return null;
        }

        public IEnumerable<Product> Get()
        {
            return ProductRepository.Items;
        }
    }
}
