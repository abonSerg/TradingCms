using System.Collections.Generic;
using System.Linq;
using TradingCms.Data.Access.Repositories;

namespace TradingCms.Data.Access.RepositoryExtensions
{
    public static class OrdersToProductsRepositoryExtension
    {
        public static IQueryable<Product> GetTopProducts(this IRepository<OrdersToProducts> repository, int count)
        {
            var top = repository.Items.GroupBy(info => info.Product)
                .Select(group => new
                {
                    Product = group.Key,
                    Count = group.Count()
                })
                .OrderBy(x => x.Product.Id).Take(count);

            var list = new List<Product>();
            foreach (var item in top)
            {
                list.Add(item.Product);
            }

            return list.AsQueryable();
        }
    }
}
