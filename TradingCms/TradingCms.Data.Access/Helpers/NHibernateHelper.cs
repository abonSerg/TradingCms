using FluentNHibernate.Cfg;
using FluentNHibernate.Cfg.Db;
using NHibernate;

namespace TradingCms.Data.Access
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
                // adds all ClassMap's from "TradingCms.Data.Access" Assembly
                .Mappings(m => m.FluentMappings.AddFromAssembly(this.GetType().Assembly))
                .BuildSessionFactory();
            return factory;
        }
    }
}
