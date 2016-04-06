using System.Net.Http.Headers;
using System.Reflection;
using System.Web.Http;
using System.Web.Mvc;
using Autofac;
using Autofac.Integration.Mvc;
using Autofac.Integration.WebApi;
using NHibernate;
using TradingCms.Data.Access.Helpers;
using TradingCms.Data.Access.Repositories;

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

            SetupIocContainer();
        }

        private static void SetupIocContainer()
        {
            // Create the container builder.
            var builder = new ContainerBuilder();

            // Register dependencies in controllers
            builder.RegisterControllers(Assembly.GetExecutingAssembly()).PropertiesAutowired();

            // Register the Web API controllers.
            builder.RegisterApiControllers(Assembly.GetExecutingAssembly()).PropertiesAutowired();

            var nHelper = new NHibernateHelper("defaultConnectionString");
            builder.Register(x => nHelper.CreateSessionFactory()).SingleInstance();

            // Register ISession as instance per web request
            //builder.Register(x => nHelper).SingleInstance(); //NHibernateHelper
            builder.Register(x => x.Resolve<ISessionFactory>().OpenSession()).InstancePerRequest();

            builder.RegisterGeneric(typeof(Repository<>)).As(typeof(IRepository<>)).InstancePerLifetimeScope().PropertiesAutowired();
            // Build the container.
            var container = builder.Build();

            DependencyResolver.SetResolver(new AutofacDependencyResolver(container));
            GlobalConfiguration.Configuration.DependencyResolver = new AutofacWebApiDependencyResolver(container);
        }
    }
}
