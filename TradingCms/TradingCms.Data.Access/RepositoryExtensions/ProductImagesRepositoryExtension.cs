using System.Linq;
using TradingCms.Data.Access.Repositories;

namespace TradingCms.Data.Access.RepositoryExtensions
{
    public static class ProductImagesRepositoryExtension
    {
        public static ProductImages GetByProductId(this IRepository<ProductImages> repository, int productId)
        {
            return repository.Items.FirstOrDefault(p => p.ProductId == productId);
        }
    }
}
