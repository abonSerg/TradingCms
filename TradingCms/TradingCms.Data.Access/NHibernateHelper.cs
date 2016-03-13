using FluentNHibernate.Cfg;
using FluentNHibernate.Cfg.Db;
using NHibernate;
using NHibernate.Context;

namespace TradingCms.Data.Access
{
    public class NHibernateHelper
    {
        //needs refactoring
        private readonly string _connectionString;
        
        public static ISessionFactory SessionFactory
        {
            get;
            private set;
        }

        public NHibernateHelper(string connectionString)
        {
            _connectionString = connectionString;
        }

        public NHibernateHelper()
        {
                
        }

        //constring
        public static ISessionFactory CreateSessionFactory()
        {
            var factory =  Fluently.Configure()
        .Database(MsSqlConfiguration.MsSql2008.ConnectionString(c => c.FromConnectionStringWithKey("defaultConnectionString")))
        .CurrentSessionContext("web")
        .Mappings(m => m.FluentMappings.AddFromAssemblyOf<FeedBackMap>())
        .BuildSessionFactory();
            SessionFactory = factory;
            return factory;
        }
    }
}
