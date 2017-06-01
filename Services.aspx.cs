using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class user_Services : System.Web.UI.Page
{
  
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindddlfilter();
            if (Request.QueryString["key"] != null)
            {
                hdfid.Value = Request.QueryString["key"].ToString();
                binddata();
            }
            else
                Response.Redirect("default.aspx");
        }
    }
    protected void bindddlfilter()
    {
        try
        {
            DataTable dt = obj.bindddlfilter();
            if (dt.Rows.Count > 0)
            {
                ddlfilterarea.DataSource = dt;
                ddlfilterarea.DataValueField = "city";

                ddlfilterarea.DataBind();

            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
    protected void binddata()
    {
        DataTable dt = obj.bindservicemen(hdfid.Value.ToString());
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
       
    }
    protected void binddatabyfilter()
    {
        Repeater1.DataSource = null;
        DataTable dt = obj.bindservicemenfilter(hdfid.Value.ToString(),ddlfilterarea.SelectedItem.Text.ToString());
        Repeater1.DataSource = dt;
        Repeater1.DataBind();

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
    }


    protected void ddlfilterarea_SelectedIndexChanged(object sender, EventArgs e)
    {
        binddatabyfilter();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}