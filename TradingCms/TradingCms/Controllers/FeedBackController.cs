using System.Collections.Generic;
using System.Web.Http;
using TradingCms.Data;
using TradingCms.Data.Access;

namespace TradingCms.Controllers
{
    public class FeedBackController : ApiController
    {
        public IRepository<FeedBack> FeedbackRepository { get; set; }

        // GET api/FeedBack
        public FeedBack Get(int id)
        {
            return null;
        }

        public IEnumerable<FeedBack> Get()
        {
            return FeedbackRepository.Items;        
        }
    }
}
