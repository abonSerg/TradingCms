using System.Web.Http;
using FluentNHibernate.Cfg;
using FluentNHibernate.Cfg.Db;
using TradingCms.Data.Entities;
using TradingCms.Data.SqlServer.Mapping;

namespace TradingCms.Controllers
{
    public class FeedBackController : ApiController
    {
        // GET api/FeedBack
        public FeedBack Get(int id)
        {
            var sessionFactory = Fluently.Configure()
                .Database(MsSqlConfiguration.MsSql2008
                  .ConnectionString(c => c.FromConnectionStringWithKey("defaultConnectionString")))
                  .CurrentSessionContext("web")
                .Mappings(m => m.FluentMappings.AddFromAssemblyOf<FeedBackMap>())
                .BuildSessionFactory();


            var session = sessionFactory.OpenSession();
            using (var transaction = session.BeginTransaction())
            {
                var res = session.Get(typeof (FeedBack), 1);
                return res as FeedBack;
            }
        }
    }
}
