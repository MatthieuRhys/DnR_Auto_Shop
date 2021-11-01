using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using System.Data.Entity;
using Rhy3Studio.Models;
using Rhy3Studio.Logic;

namespace Rhy3Studio
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);



            // Initialize the product database.
            Database.SetInitializer(new ProductDatabaseInitializer());


            //Create the administrator role and users
            RoleActions roleActions = new RoleActions();
            roleActions.createadmin();
            roleActions.createcustomer();

            roleActions.createemployee();

           
        }
    }
}