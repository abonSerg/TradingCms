using FluentNHibernate.Cfg;
using FluentNHibernate.Cfg.Db;
using NHibernate;

namespace TradingCms.Data.Access.Helpers
{
    public class NHibernateHelper
    {
        private readonly string _connectionString;
        public NHibernateHelper(string connectionString)
        {
            _connectionString = connectionString;
        }

        public ISessionFactory CreateSessionFactory()
        {
            var factory = Fluently.Configure()
            .Database(MsSqlConfiguration.MsSql2008.ConnectionString(c => c.FromConnectionStringWithKey(_connectionString)))
            .CurrentSessionContext("web")
            .Mappings(m => m.FluentMappings.AddFromAssembly(typeof(NHibernateHelper).Assembly))
            .BuildSessionFactory();
            return factory;
        }
    }
}
