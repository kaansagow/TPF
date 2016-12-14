using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(tpf.Startup))]
namespace tpf
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
