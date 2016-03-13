using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using NHibernate;
using NHibernate.Linq;
using TradingCms.Data;
using TradingCms.Data.Access;

namespace TradingCms.Controllers
{
    public class FeedBackController : ApiController
    {
        private readonly ISession _nhSession; // no need already

        public FeedBackController(ISession nhSession) //default ctor
        {
            _nhSession = nhSession;
            //FeedbackRepository = new Repository<FeedBack>();
        }

        // GET api/FeedBack
        public FeedBack Get(int id)
        {
            var res = _nhSession.Get<FeedBack>(id);
            return res;
        }

        public IEnumerable<FeedBack> Get()
        {
            return _nhSession.Query<FeedBack>().ToList();
        }





        //example. need to be deleted
        private IRepository<FeedBack> FeedbackRepository;
       

        [HttpGet]
        public FeedBack GetFeedBackByRate(int rate)
        {
           var feedBack = FeedbackRepository.GetFeedBackByRate(rate); 

           return feedBack;
           
        }
    }
}
