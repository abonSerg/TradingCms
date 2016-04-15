using System.Linq;
using NHibernate.Util;
using TradingCms.Data.Access.Repositories;

namespace TradingCms.Data.Access.RepositoryExtensions
{
    public static class OrdersToProductsRepositoryExtension
    {
        public static void SetPriceForOrderedProducts(this IRepository<OrdersToProducts> repository, int orderId)
        {
            repository.Items
                .Where(orderToProducts => orderToProducts.OrderId == orderId)
                .ForEach(orderToProducts => orderToProducts.Price = orderToProducts.Product.Price);
        }
    }
}
