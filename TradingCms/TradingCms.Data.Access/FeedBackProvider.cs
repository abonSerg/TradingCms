using NHibernate;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NHibernate.Linq;

namespace TradingCms.Data.SqlServer
{
    public class FeedBackProvider : RepositoryProvider
    {

        private static FeedBackProvider _instance;

        public static FeedBackProvider Instance
        {
            get
            {
                if (_instance == null)
                    _instance = new FeedBackProvider();

                return _instance;
            }
        }


        public IList<FeedBack> GetFeedBacksByRate(ISession session, int rate)
        {
            IList<FeedBack> allFeedBacks = GetEntities<FeedBack>(session);

            IList<FeedBack> ratedFeedBack = new List<FeedBack>();

            foreach (var feedBack in allFeedBacks) 
            {
                if (feedBack.Rate == rate)
                    ratedFeedBack.Add(feedBack);
            }

            return ratedFeedBack;
        }

    }
}
