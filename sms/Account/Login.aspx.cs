using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sms.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void LoginButton_OnClick(object sender, EventArgs e)
        {
        var username = UserName.Text;
        var password = Password.Text;
        if (Helpers.UserExists(username, password))
        {
        Session["LoggedIn"] = "true";
        string usertype = Helpers.UserType(username, password);
        if (usertype.ToLower() == "admin")
        {
           Response.Redirect("~/Admin.Aspx");
        }
        else 
        {
        Response.Redirect("~/Default.Aspx");
        }
        }
        else 
        {
        return;
        }
        }
    }
}
