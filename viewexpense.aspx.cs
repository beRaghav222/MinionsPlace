using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class admin_viewexpense : System.Web.UI.Page
{

    DataTable dt;
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        dt = obj.BindData("manageexpense", 2);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
    }

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        string Id = e.CommandArgument.ToString();
        if (e.CommandName == "Delete")
        {
            obj.delete(Id, "manageexpense", 5);
            Response.Redirect("~/admin/Viewexpense.aspx");
        }

    }
}