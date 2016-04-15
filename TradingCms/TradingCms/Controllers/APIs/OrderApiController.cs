using System.Linq;
using System.Web.Http;
using TradingCms.Data;
using TradingCms.Data.Access.Repositories;
using TradingCms.Data.Access.RepositoryExtensions;
using TradingCms.DTOs;
using TradingCms.Extensions.ConvertExtensions;

namespace TradingCms.Controllers.APIs
{
    [RoutePrefix("api/Order")]
    public class OrderApiController : ApiController
    {
        public IRepository<Order> OrderRepository { get; set; }
        public IRepository<Product> ProductRepository { get; set; }
        public IRepository<OrdersToProducts> OrdersToProductsRepository { get; set; }

        [HttpPost]
        [Route("Create")]
        public IHttpActionResult Create(OrderCreatedDto model)
        {
            if (ModelState.IsValid)
            {
                var order = model.ToOrder();
                order.Products = ProductRepository.GetProducts(model.ProductIdList).ToList();

                if (order.Products.Count > 0 && OrderRepository.Add(order))
                {
                    OrderRepository.Flush();
                    OrdersToProductsRepository.SetActualPrice(order.Id);
                    OrdersToProductsRepository.Flush();
                    return Ok();
                }
            }
            return BadRequest(ModelState);
        }
    }
}
