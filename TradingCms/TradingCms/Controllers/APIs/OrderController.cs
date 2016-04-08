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
    public class OrderController : ApiController
    {
        public IRepository<Order> OrderRepository { get; set; }
        public IRepository<Product> ProductRepository { get; set; }
        public IRepository<OrdersToProducts> OrdersToProductsRepository { get; set; }

        [HttpPost]
        public bool Create(CreateOrderDto model)
        {
            if (ModelState.IsValid)
            {
                var order = model.ToOrder();
                order.Products = ProductRepository.Items
                    .Where(product => model.ProductIdList.Contains(product.Id))
                    .ToList();
                if (order.Products.Count > 0 && OrderRepository.Add(order))
                {
                    OrderRepository.Flush();
                    OrdersToProductsRepository.SetActualPrice(order.Id);
                    OrdersToProductsRepository.Flush();
                    return true;
                }
            }
            return false;
        }
    }
}
