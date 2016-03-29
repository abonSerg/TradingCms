﻿using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using TradingCms.Data;
using TradingCms.Data.Access.Repositories;
using TradingCms.Data.Access.RepositoryExtensions;

namespace TradingCms.Controllers.APIs
{
    [RoutePrefix("api/FeedBack")]
    public class FeedBackApiController : ApiController
    {
        public IRepository<FeedBack> FeedbackRepository { get; set; }

        [Route("GetProductFeedbacks/{productId}")]
        public IEnumerable<FeedBack> GetProductFeedbacks(int productId)
        {
            var res = FeedbackRepository.GetFeedbackByProduct(productId).ToList();
            return res;
        }
    }
}