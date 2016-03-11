using System.Net.Http.Headers;
using System.Reflection;
using System.Web.Http;
using Autofac;
using Autofac.Integration.WebApi;
using NHibernate;
using TradingCms.Data.SqlServer;

namespace TradingCms
{
    public static class WebApiConfig
    {
        public static void Register(HttpConfiguration config)
        {
            // Web API configuration and services

            // Web API routes
            config.MapHttpAttributeRoutes();

            config.Routes.MapHttpRoute(
                name: "DefaultApi",
                routeTemplate: "api/{controller}/{id}",
                defaults: new { id = RouteParameter.Optional }
            );

            config.Formatters.JsonFormatter.SupportedMediaTypes.Add(new MediaTypeHeaderValue("text/html"));

            SetupIocContainer(config);
        }

        private static void SetupIocContainer(HttpConfiguration config)
        {
            // Create the container builder.
            var builder = new ContainerBuilder();

            // Register the Web API controllers.
            builder.RegisterApiControllers(Assembly.GetExecutingAssembly());

            // Register ISessionFactory as Singleton 
            builder.Register(x => NHibernateConfigurator.InitializeSessionFactory("defaultConnectionString")).SingleInstance();
            // Register ISession as instance per web request
            builder.Register(x => x.Resolve<ISessionFactory>().OpenSession()).InstancePerRequest();

            // Build the container.
            var container = builder.Build();

            // Create the depenedency resolver.
            var resolver = new AutofacWebApiDependencyResolver(container);

            // Configure Web API with the dependency resolver.
            config.DependencyResolver = resolver;
        }
    }
}
