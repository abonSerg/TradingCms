using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using NHibernate;
using NHibernate.Linq;
using TradingCms.Data;
using TradingCms.Data.SqlServer;

namespace TradingCms.Controllers
{
    public class FeedBackController : ApiController
    {
        private readonly ISession _nhSession;

        public FeedBackController(ISession nhSession)
        {
            _nhSession = nhSession;
        }

        // GET api/FeedBack
        public FeedBack Get(int id)
        {
            var res = _nhSession.Get<FeedBack>(id);
            return res;
        }

        [HttpGet]
        public IEnumerable<FeedBack> GetFeedBackByName(string param1) 
        {
            int rate;

             if (int.TryParse(param1,out rate))
             {
                 var feedBacks = FeedBackProvider.Instance.GetFeedBacksByRate(_nhSession, rate);  // Дергаем методы с провайдера

                 return feedBacks;
             }
             return null;
        }

        public IEnumerable<FeedBack> Get()
        {
            return _nhSession.Query<FeedBack>().ToList();
        }
    }
}
