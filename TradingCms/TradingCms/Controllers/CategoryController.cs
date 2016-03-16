using System.Collections.Generic;
using System.Web.Http;
using TradingCms.Data;
using TradingCms.Data.Access;

namespace TradingCms.Controllers
{
    public class CategoryController : ApiController
    {
        public IRepository<Category> CategoryRepository { get; set; }

        public Category Get(int id)
        {
            return id > 0 ? CategoryRepository.Find(id) : null;
        }

        public IEnumerable<Category> Get()
        {
            return CategoryRepository.Items;
        }
    }
}
