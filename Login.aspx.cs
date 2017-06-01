using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class admin_Login : System.Web.UI.Page
{
    Class1 obj=new Class1();
       
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["key"] = 0;

    }
   
    protected void btnlogin_Click1(object sender, EventArgs e)
    {
        obj.conopen();


        string name = txtemail.Text.ToString();
        string pass = txtpassword.Text.ToString();
        SqlDataReader dr = obj.select(name, pass);
        if (dr.HasRows)
        {
            Session["key"] = 1;
            Response.Redirect("Default.aspx");
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "enter correct username password";
           
        }
    }
}





