using Microsoft.Owin;
using Owin;


[assembly: OwinStartup(typeof(TradingCms.Startup))]
namespace TradingCms
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}