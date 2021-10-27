using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Rhy3Studio.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;


namespace Rhy3Studio.Logic
{
    internal class RoleActions
    {
        internal void createadmin()
        {

            //Access the applcation context and create result variables.

            Models.ApplicationDbContext context = new ApplicationDbContext();

            IdentityResult IdRoleResult;
            IdentityResult IdUserResult;


            //Create a RoleStore object by using the Application Db Context object.
            //The Role Store is only allowed to containt Identity Role objects.

            var roleStore = new RoleStore<IdentityRole>(context);

            //Create a RoleManager object that is allowed to contain IdentityRole onjects.
            //When creating the RoleManager object, you pass in (as a parameter) a new RoleStore object.

            var roleMgr = new RoleManager<IdentityRole>(roleStore);

            //Then, you create the "Administrator" role if it doesn't already exist.
            if (!roleMgr.RoleExists("Administrator") )
            {
                IdRoleResult = roleMgr.Create(new IdentityRole("Administrator"));

                if (!IdRoleResult.Succeeded)
                {
                    //Handle the error condition if there a problem creating the Role Manager object.
                }

            }

            //Create a UserManager object based on the UserStore object and the ApplicationDbContext object.
            //Note that you can create new objects and use them as parameters in 
            // a single line of code, rather than using multiple lines of code, as you did
            //for the RoleManager object.


            var userMgr = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));

            var appUser = new ApplicationUser()
            {

                UserName = "Admin@gmail.com",
            };

            IdUserResult = userMgr.Create(appUser, "Pa$$word983");

            //If the new "Admin" user was successfully created,
            //add teh "Admin" user to the "Administrator" role
            if (IdUserResult.Succeeded)
            {
                IdUserResult = userMgr.AddToRole(appUser.Id, "Administrator");
                if (!IdUserResult.Succeeded)
                {
                    //Handle the error condition if there's a problem adding the user to the role.
                }


            }
            else
            {
                //Handle the error condition if there's a problem adding the user to the role.

            }



        }

        internal void createemployee()
        {

            //Access the applcation context and create result variables.

            Models.ApplicationDbContext context = new ApplicationDbContext();

            IdentityResult IdRoleResult_emp;
            IdentityResult IdUserResult_emp;


            //Create a RoleStore object by using the Application Db Context object.
            //The Role Store is only allowed to containt Identity Role objects.

            var roleStore = new RoleStore<IdentityRole>(context);

            //Create a RoleManager object that is allowed to contain IdentityRole onjects.
            //When creating the RoleManager object, you pass in (as a parameter) a new RoleStore object.

            var roleMgr_emp = new RoleManager<IdentityRole>(roleStore);

            //Then, you create the "Administrator" role if it doesn't already exist.
            if (!roleMgr_emp.RoleExists("Employee"))
            {
                IdRoleResult_emp = roleMgr_emp.Create(new IdentityRole("Employee"));

                if (!IdRoleResult_emp.Succeeded)
                {
                    //Handle the error condition if there a problem creating the Role Manager object.
                }

            }

            //Create a UserManager object based on the UserStore object and the ApplicationDbContext object.
            //Note that you can create new objects and use them as parameters in 
            // a single line of code, rather than using multiple lines of code, as you did
            //for the RoleManager object.


            var userMgr_emp = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));

            var appUser_emp = new ApplicationUser()
            {

                UserName = "Employee@gmail.com",
            };

            IdUserResult_emp = userMgr_emp.Create(appUser_emp, "Employee@123");

            //If the new "Admin" user was successfully created,
            //add teh "Admin" user to the "Administrator" role
            if (IdUserResult_emp.Succeeded)
            {
                IdUserResult_emp = userMgr_emp.AddToRole(appUser_emp.Id, "Employee");
                if (!IdUserResult_emp.Succeeded)
                {
                    //Handle the error condition if there's a problem adding the user to the role.
                }


            }
            else
            {
                //Handle the error condition if there's a problem adding the user to the role.

            }



        }



        internal void createcustomer()
        {

            //Access the applcation context and create result variables.

            Models.ApplicationDbContext context = new ApplicationDbContext();

            IdentityResult IdRoleResult_cus;
            IdentityResult IdUserResult_cus;


            //Create a RoleStore object by using the Application Db Context object.
            //The Role Store is only allowed to containt Identity Role objects.

            var roleStore = new RoleStore<IdentityRole>(context);

            //Create a RoleManager object that is allowed to contain IdentityRole onjects.
            //When creating the RoleManager object, you pass in (as a parameter) a new RoleStore object.

            var roleMgr_cus = new RoleManager<IdentityRole>(roleStore);

            //Then, you create the "Administrator" role if it doesn't already exist.
            if (!roleMgr_cus.RoleExists("Customer"))
            {
                IdRoleResult_cus = roleMgr_cus.Create(new IdentityRole("Customer"));

                if (!IdRoleResult_cus.Succeeded)
                {
                    //Handle the error condition if there a problem creating the Role Manager object.
                }

            }

            //Create a UserManager object based on the UserStore object and the ApplicationDbContext object.
            //Note that you can create new objects and use them as parameters in 
            // a single line of code, rather than using multiple lines of code, as you did
            //for the RoleManager object.


            var userMgr_cus = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));

            var appUser_cus = new ApplicationUser()
            {

                UserName = "Jerry34@gmail.com",
            };

            IdUserResult_cus = userMgr_cus.Create(appUser_cus, "Hello.34");

            //If the new "Admin" user was successfully created,
            //add teh "Admin" user to the "Administrator" role
            if (IdUserResult_cus.Succeeded)
            {
                IdUserResult_cus = userMgr_cus.AddToRole(appUser_cus.Id, "Customer");
                if (!IdUserResult_cus.Succeeded)
                {
                    //Handle the error condition if there's a problem adding the user to the role.
                }


            }
            else
            {
                //Handle the error condition if there's a problem adding the user to the role.

            }



        }




    }
}