using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using NHibernate;
using NHibernate.Linq;
using TradingCms.Data;
using TradingCms.Data.Access;
using System.Web.Mvc;

namespace TradingCms.Controllers
{
    public class FeedBackController : ApiController
    {
        private IRepository<FeedBack> FeedbackRepository;

        public FeedBackController(ISession nhSession) //default ctor
        {
            FeedbackRepository = new Repository<FeedBack>(nhSession);
        }

        // GET api/FeedBack
        public FeedBack Get(int id)
        {
            //var res = _nhSession.Get<FeedBack>(id);
            //return res;
            return null;
        }

        public IEnumerable<FeedBack> Get()
        {
            //return _nhSession.Query<FeedBack>().ToList();
            return null;
        }
  
        public FeedBack GetFeedBackByRate(int rate)
        {
           var feedBack = FeedbackRepository.GetFeedBackByRate(rate); 

           return feedBack;
           
        }
    }
}
