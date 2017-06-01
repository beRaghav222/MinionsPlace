using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class admin_income : System.Web.UI.Page
{
    string total;
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (int.Parse(Session["key"].ToString()) <= 0)
            Response.Redirect("login.aspx");

    }
    protected void ddlfilter_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlfilter.SelectedItem.Text == "Monthly")
        {
            lblmessage.Text = "";
            ddlyear.Visible = false;

            ddlmonth.Visible = true;

        }
        if (ddlfilter.SelectedItem.Text == "Total")
        {
            lblmessage.Visible = true;
            lblmessage.Text = "";
            DataSet dt = obj.selectincome(7, "p");
            // Repeater1.DataSource = dt;
            //Repeater1.DataBind();
            //txtTotal.Visible = true;
            //txtTotal.Text = dt.Tables[0].Rows[0].ItemArray[0].ToString();
           
               
                lblmessage.Text = dt.Tables[0].Rows[0].ItemArray[0].ToString();
           
           
        }
        if (ddlfilter.SelectedItem.Text == "Yearly")
        {
            lblmessage.Text = "";
            ddlmonth.Visible = false;
            ddlyear.Visible = true;

           



        }

    }
        protected void ddlmonth_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlmonth.SelectedItem.Selected == true)
        {
            lblmessage.Text = "";
            string p ="___" +ddlmonth.SelectedItem.Value.ToString()+"%";
            DataSet dt = obj.selectincome(8, p);

            lblmessage.Visible = true;
                lblmessage.Text = dt.Tables[0].Rows[0].ItemArray[0].ToString();
                
            
           
        }
        }
        protected void ddlyear_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblmessage.Visible = true;
            lblmessage.Text = "";
            if (ddlyear.SelectedItem.Selected == true)
            {
                string p = "______" + ddlyear.SelectedItem.Text.ToString();
                DataSet dt = obj.selectincome(9, p);
                
                
                   
                    lblmessage.Text = dt.Tables[0].Rows[0].ItemArray[0].ToString();
                   
                
            }
        }

   
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        //TextBox TextBox1 = (TextBox)e.Item.FindControl("TextBox1");
      
        //TextBox1.Visible = true;
        //TextBox1.Text = total;
    }
   
}