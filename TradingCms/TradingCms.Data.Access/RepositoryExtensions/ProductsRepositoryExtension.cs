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
    }
}
