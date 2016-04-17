using FluentNHibernate.Cfg;
using FluentNHibernate.Cfg.Db;
using NHibernate;
using NHibernate.AspNet.Identity.Helpers;

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
            var myEntities = new[] 
            {
                typeof(ApplicationUser)
            };
            var factory = Fluently.Configure()
                .Database(MsSqlConfiguration.MsSql2008.ConnectionString(c => c.FromConnectionStringWithKey(_connectionString)))
                .ExposeConfiguration(cfg =>
                {
                    cfg.AddDeserializedMapping(MappingHelper.GetIdentityMappings(myEntities), null);
                })
                .CurrentSessionContext("web")
                // adds all ClassMap's from "TradingCms.Data.Access" Assembly
                .Mappings(m => m.FluentMappings.AddFromAssembly(this.GetType().Assembly))
                .BuildSessionFactory();
            return factory;
        }
    }
}
