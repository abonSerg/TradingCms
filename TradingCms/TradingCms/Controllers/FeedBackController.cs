using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using NHibernate;
using NHibernate.Linq;
using TradingCms.Data;

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

        public IEnumerable<FeedBack> Get()
        {
            return _nhSession.Query<FeedBack>().ToList();
        }
    }
}
