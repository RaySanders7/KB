using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(KnowBias.Startup))]
namespace KnowBias
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
