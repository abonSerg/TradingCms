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

        public static ISession GetCurrentSession()
        {
            if (!CurrentSessionContext.HasBind(SessionFactory))
                CurrentSessionContext.Bind(SessionFactory.OpenSession());

            return SessionFactory.GetCurrentSession();
        }

        public static void DisposeCurrentSession()
        {
            ISession currentSession = CurrentSessionContext.Unbind(SessionFactory);

            currentSession.Close();
            currentSession.Dispose();
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
