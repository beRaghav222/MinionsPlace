using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class admin_viewservicemen : System.Web.UI.Page
{
    DataTable dt;
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (int.Parse(Session["key"].ToString()) <= 0)
            Response.Redirect("login.aspx");

      //dt=  obj.BindData("addservicemen", 3);
      //Repeater1.DataSource = dt;
      //Repeater1.DataBind();
    }

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        string Id = e.CommandArgument.ToString();
        if (e.CommandName == "Delete")
        {
            obj.delete(Id, "addservicemen", 4);
            Response.Redirect("~/admin/Viewservicemen.aspx");
        }

    }


   
    protected void btnfind_Click1(object sender, EventArgs e)
    {
        dt = obj.BindDataView("addservicemen", 5, txtfind.Text.Trim());
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
    }
    protected void ddlfilter_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlfilter.SelectedItem.Value.ToString()== "All")
        {

            dt = obj.BindData("addservicemen", 3);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
        if (ddlfilter.SelectedItem.Text.Trim() == "Adharid")
        {
            txtfind.Visible = true;
            btnfind.Visible = true;
          
        }
    }
}