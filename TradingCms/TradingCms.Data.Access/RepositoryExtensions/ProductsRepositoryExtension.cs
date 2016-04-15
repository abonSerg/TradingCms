using System.Collections.Generic;
using System.Linq;
using TradingCms.Data.Access.Repositories;

namespace TradingCms.Data.Access.RepositoryExtensions
{
    public static class ProductsRepositoryExtension
    {
        public static IQueryable<Product> GetTopProducts(this IRepository<Product> repository, int count)
        {
            return repository.Items.OrderByDescending(x => x.Orders.Count).Take(count).AsQueryable();
        }

        public static IQueryable<Product> GetNewProducts(this IRepository<Product> repository, int count)
        {
            return repository.Items.OrderByDescending(d => d.CreateDate).Take(count).AsQueryable();
        }

        public static IQueryable<Product> GetProducts(this IRepository<Product> repository, IEnumerable<int> productIdList)
        {
            return repository.Items.Where(product => productIdList.Contains(product.Id));
        }
    }
}
