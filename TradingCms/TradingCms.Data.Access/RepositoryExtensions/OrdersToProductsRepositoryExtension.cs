using System.Linq;
using TradingCms.Data.Access.Repositories;

namespace TradingCms.Data.Access.RepositoryExtensions
{
    public static class OrdersToProductsRepositoryExtension
    {
        public static void SetActualPrice(this IRepository<OrdersToProducts> repository, int orderId)
        {
            var ordersToProducts = repository.Items.Where(o => o.OrderId == orderId)
                .ToList();
            ordersToProducts.ForEach(o => o.Price = o.Product.Price);
        }
    }
}
