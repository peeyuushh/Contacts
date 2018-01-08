using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;
using System.Configuration;
public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        People getUserID = new People(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
        //Response.Write(txtUsername.Text.Trim());
        //Response.Write(txtPassword.Text.Trim());
        int userID =getUserID.VerifyUser(txtUsername.Text.Trim(), txtPassword.Text.Trim());
        Response.Write(userID);
             
    }
}