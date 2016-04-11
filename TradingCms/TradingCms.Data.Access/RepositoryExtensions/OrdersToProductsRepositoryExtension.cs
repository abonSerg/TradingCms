using System.Linq;
using NHibernate.Util;
using TradingCms.Data.Access.Repositories;

namespace TradingCms.Data.Access.RepositoryExtensions
{
    public static class OrdersToProductsRepositoryExtension
    {
        public static void SetActualPrice(this IRepository<OrdersToProducts> repository, int orderId)
        {
            repository.Items.Where(o => o.OrderId == orderId)
                .ForEach(o =>
                {
                    o.Price = o.Product.Price;
                    repository.Update(o);
                });
        }
    }
}
