using System.Linq;
using TradingCms.Data.Access.Repositories;

namespace TradingCms.Data.Access.RepositoryExtensions
{
    public static class FeedBackRepositoryExtension 
    {
        public static IQueryable<FeedBack> GetFeedbacksByProduct(this IRepository<FeedBack> repository, int productId)
        {
            return repository.Items.Where(f => f.ProductId == productId);
        }
    }
}
