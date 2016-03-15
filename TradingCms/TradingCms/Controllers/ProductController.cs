using System.Collections.Generic;
using System.Web.Http;
using TradingCms.Data;
using TradingCms.Data.Access;

namespace TradingCms.Controllers
{
    public class ProductController : ApiController
    {
        public IRepository<Product> ProductRepository { get; set; }

        // GET api/Product
        public Product Get(int id)
        {
            return id > 0 ? ProductRepository.Find(id) : null;
        }

        public IEnumerable<Product> Get()
        {
            return ProductRepository.Items;
        }
    }
}
