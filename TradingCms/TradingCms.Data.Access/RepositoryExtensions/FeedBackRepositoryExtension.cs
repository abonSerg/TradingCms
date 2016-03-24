using System.Linq;
using TradingCms.Data.Access.Repositories;

namespace TradingCms.Data.Access.RepositoryExtensions
{
    public static class FeedBackRepositoryExtension 
    {
        //sample
        public static FeedBack GetFeedBackByRate(this IRepository<FeedBack> repository, int rate)
        {
            return repository.Find(1);
        }

        public static IQueryable<FeedBack> GetFeedbackByProduct(this IRepository<FeedBack> repository, int productId)
        {
            return repository.Items.Where(f => f.ProductId == productId);
        }
    }
}
