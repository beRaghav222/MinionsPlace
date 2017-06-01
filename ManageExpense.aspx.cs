using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class admin_ManageExpense : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (int.Parse(Session["key"].ToString()) == 0)
            Response.Redirect("login.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string strcon = @"Data Source=.;Initial Catalog=minions;Integrated Security=True";
        SqlConnection con = new SqlConnection(strcon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "manageexpense";
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@expenseon", SqlDbType.VarChar).Value = txtexpenseon.Text.Trim();
        cmd.Parameters.Add("@expenditure", SqlDbType.VarChar).Value = txtexpenditure.Text.Trim();
        cmd.Parameters.Add("@description", SqlDbType.VarChar).Value = txtdescription.Text.Trim();

        cmd.Parameters.Add("@expendituredate", SqlDbType.VarChar).Value = txtexpendituredate.Text.Trim();
        cmd.Parameters.AddWithValue("@action", 1);
        cmd.Connection = con;
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            Label2.Visible = true;
            Label2.Text = "Data saved successfully";
            Label2.ForeColor = System.Drawing.Color.Green;

        }

        catch (Exception ex)
        {
            throw ex;

        }
        finally
        {

            con.Close();
            con.Dispose();
            Response.Redirect("manageexpense.aspx");
        }

    }
    protected void txtexpenditure_TextChanged(object sender, EventArgs e)
    {

    }
}