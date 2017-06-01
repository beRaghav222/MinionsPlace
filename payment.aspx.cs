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
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (int.Parse(Session["key"].ToString()) == 0)
         Response.Redirect("login.aspx");
      if(!IsPostBack)
          Binddropdownlist();
    }


    public void Binddropdownlist()
    {




        try
        {
            DataTable dt = obj.BindData("timepd", 2);

            if (dt.Rows.Count > 0)
            {


                ddlduration.DataSource = dt;
                ddlduration.DataValueField = "month";
              
                ddlduration.DataBind();
                ddlduration.Items.Insert(0, "choose Duration");


            }
        }
        catch (Exception ex)
        {
            throw ex;
        }

    }


    protected void Button1_Click(object sender, EventArgs e)
    { 
        string strcon = @"Data Source=.;Initial Catalog=minions;Integrated Security=True";
        SqlConnection con = new SqlConnection(strcon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Addpayment";
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@adharid", SqlDbType.VarChar).Value = txtadharid.Text.Trim();
        cmd.Parameters.Add("@duration", SqlDbType.VarChar).Value = ddlduration.SelectedItem.Text.ToString();
        cmd.Parameters.Add("@paymentdate", SqlDbType.VarChar).Value = txtpaymentdate.Text.Trim();
        cmd.Parameters.Add("@payment", SqlDbType.Int).Value = int.Parse(txtpayment.Text.Trim());
        cmd.Parameters.Add("@enddate", SqlDbType.VarChar).Value = txtenddate.Text.Trim();
        cmd.Parameters.Add("@discount", SqlDbType.VarChar).Value = txtdiscount.Text.Trim();
        
        cmd.Parameters.Add("@Description", SqlDbType.VarChar).Value = txtdescription.Text.Trim();
        cmd.Parameters.AddWithValue("@action", 1);

       
        cmd.
            Connection = con;

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
            Response.Redirect("payment.aspx");
        }

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void ddlduration_SelectedIndexChanged(object sender, EventArgs e)
    {

        SqlDataReader sdr = obj.select1(ddlduration.SelectedItem.Text.ToString(), 3);
        try
        {

            while (sdr.Read())
            {




                txtpayment.Text = sdr["amount"].ToString();
             

            }
        }
        catch (Exception ex)
        {
            throw ex;

        }
       
    }
    
    protected void txtdiscount_TextChanged(object sender, EventArgs e)
    {
        txtpayment.Text = (int.Parse(txtpayment.Text.Trim()) - int.Parse(txtdiscount.Text.Trim())).ToString();
    }
    protected void txtpaymentdate_TextChanged1(object sender, EventArgs e)
    {
       // DateTime dt = System.DateTime.SpecifyKind(08/01/2016,).Now.AddMonths(int.Parse(ddlduration.SelectedItem.ToString()));
        DateTime dt = DateTime.Parse(txtpaymentdate.Text).AddMonths(int.Parse(ddlduration.SelectedItem.ToString()));
        txtenddate.Text = dt.ToString("dd/MM/yyyy");
    }
    protected void txtadharid_TextChanged(object sender, EventArgs e)
    {
        if (obj.checkadharid(txtadharid.Text.Trim())==true)
        {
            lbladarerror.Visible = false;

        }
        else
        {
            lbladarerror.Visible = true;
            txtadharid.Text = "";
        }
    }
}