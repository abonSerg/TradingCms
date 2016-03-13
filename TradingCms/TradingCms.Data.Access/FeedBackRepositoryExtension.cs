using System.Linq;

namespace TradingCms.Data.Access
{
    public static class FeedBackRepositoryExtension 
    {
        //sample
        public static FeedBack GetFeedBackByRate(this IRepository<FeedBack> repository, int rate)
        {
            return repository.Get(r => r.Rate == rate).OrderByDescending(r => r.Rate).FirstOrDefault();
        }
    }
}
