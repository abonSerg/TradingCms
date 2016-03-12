using FluentNHibernate.Cfg;
using FluentNHibernate.Cfg.Db;
using NHibernate;

namespace TradingCms.Data.SqlServer
{
    public static class NHibernateConfigurator
    {
        public static ISessionFactory InitializeSessionFactory(string nameConnectionString)
        {
            return Fluently.Configure()
                .Database(MsSqlConfiguration.MsSql2008.ConnectionString(c => c.FromConnectionStringWithKey(nameConnectionString)))
                .CurrentSessionContext("web")
                .Mappings(m => m.FluentMappings.AddFromAssemblyOf<FeedBackMap>())
                .BuildSessionFactory();
        }
    }
}
