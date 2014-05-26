using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.Http;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.Http.WebHost;

namespace CTS_App
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
//            RouteConfig.RegisterRoutes(RouteTable.Routes);
//            BundleConfig.RegisterBundles(BundleTable.Bundles);

//            RouteTable.Routes.MapHttpRoute(
//            name: "DefaultApi",
//            routeTemplate: "api/{controller}/{id}",
//            defaults: new { id = System.Web.Http.RouteParameter.Optional }
//        );
//
//            RouteTable.Routes.MapHttpRoute(
//            name: "Action",
//            routeTemplate: "api/{controller}/{action}/{id}",
//            defaults: new { id = System.Web.Http.RouteParameter.Optional }
//
//        );
            RouteTable.Routes.MapHttpRoute("DefaultApiWithId", "api/{controller}/{id}", new { id = RouteParameter.Optional }, new { id = @"\d+" });
            RouteTable.Routes.MapHttpRoute("DefaultApiWithAction", "api/{controller}/{action}");
            RouteTable.Routes.MapHttpRoute("DefaultApiGet", "api/{controller}", new { action = "Get" }, new { httpMethod = new HttpMethodConstraint(HttpMethod.Get.ToString()) });
            RouteTable.Routes.MapHttpRoute("DefaultApiPost", "api/{controller}", new { action = "Post" }, new { httpMethod = new HttpMethodConstraint(HttpMethod.Post.ToString()) });
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}