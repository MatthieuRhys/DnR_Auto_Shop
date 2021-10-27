using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Rhy3Studio.Startup))]
namespace Rhy3Studio
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
