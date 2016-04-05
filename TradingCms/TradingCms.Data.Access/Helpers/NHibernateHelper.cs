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

        //constring
        public ISessionFactory CreateSessionFactory()
        {
            var factory = Fluently.Configure()
        .Database(MsSqlConfiguration.MsSql2008.ConnectionString(c => c.FromConnectionStringWithKey(_connectionString)))
        .CurrentSessionContext("web")
        .Mappings(m => m.FluentMappings.AddFromAssemblyOf<FeedBackMap>())
        .Mappings(m => m.FluentMappings.AddFromAssemblyOf<ProductMap>())
        .Mappings(m => m.FluentMappings.AddFromAssemblyOf<CategoryMap>())
        .Mappings(m => m.FluentMappings.AddFromAssemblyOf<CategoryTranslationMap>())
        .Mappings(m => m.FluentMappings.AddFromAssemblyOf<LanguageMap>())
        .Mappings(m => m.FluentMappings.AddFromAssemblyOf<OrderMap>())
        .Mappings(m => m.FluentMappings.AddFromAssemblyOf<OrdersToProductsMap>())
        .Mappings(m => m.FluentMappings.AddFromAssemblyOf<ProductImagesMap>())
        .Mappings(m => m.FluentMappings.AddFromAssemblyOf<ProductTranslationMap>())
        .BuildSessionFactory();
            return factory;
        }
    }
}
