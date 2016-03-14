using FluentNHibernate.Cfg;
using FluentNHibernate.Cfg.Db;
using NHibernate;
using NHibernate.Context;

namespace TradingCms.Data.Access
{
    public class NHibernateHelper
    {
        private readonly string _connectionString;
        
        public NHibernateHelper(string connectionString)
        {
            _connectionString = connectionString;
        }

        //constring
        public ISessionFactory CreateSessionFactory()
        {
            var factory = Fluently.Configure()
        .Database(MsSqlConfiguration.MsSql2008.ConnectionString(c => c.FromConnectionStringWithKey(_connectionString)))
        .CurrentSessionContext("web")
        .Mappings(m => m.FluentMappings.AddFromAssemblyOf<FeedBackMap>())
        .BuildSessionFactory();
            return factory;
        }
    }
}
