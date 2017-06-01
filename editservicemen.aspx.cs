using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
public partial class admin_editservicemen : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (int.Parse(Session["key"].ToString()) == 0)
            Response.Redirect("login.aspx");

        if (!IsPostBack)
        {
            if (Request.QueryString["adharid"] != null)
            {
                hf.Value = Request.QueryString["adharid"].ToString();


            }
            else
                Response.Redirect("viewservicemen.aspx");
            bindinfo();
        }
    }




    public void Binddropdownlist()
    {



        ;
        try
        {
            DataTable dt = obj.BindData("occupation", 1);

            if (dt.Rows.Count > 0)
            {


                ddloccupation.DataSource = dt;
                ddloccupation.DataValueField = "occutype";
                ddloccupation.DataBind();
                ddloccupation.Items.Insert(0, "choose Occupation");


            }
        }
        catch (Exception ex)
        {
            throw ex;
        }

    }

    protected void bindinfo()
    {
        string strcon = @"Data Source=.;Initial Catalog=minions;Integrated Security=True";
        SqlConnection con = new SqlConnection(strcon);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;

        //cmd.Parameters.AddWithValue("@id", hf.Value);
        cmd.CommandText = "Select * From service_men where adharid=@id";

        cmd.Parameters.AddWithValue("@id", hf.Value);
        con.Open();
        SqlDataReader sdr = cmd.ExecuteReader();
        try
        {

            while (sdr.Read())
            {
                Binddropdownlist();
                ddloccupation.SelectedIndex = Convert.ToInt32(sdr["occuindex"].ToString());


                txtadharid.Text = sdr["adharid"].ToString();
                txtfname.Text = sdr["firstname"].ToString();
                txtlname.Text = sdr["lastname"].ToString();
                if ("Male" == sdr["gender"].ToString())
                    rbmale.Checked = true;
                else
                    rbfemale.Checked = true;
                txtage.Text = sdr["age"].ToString();
                txtcontact.Text = sdr["contact"].ToString();
                txtExperience.Text = sdr["experience"].ToString();
                txtcity.Text = sdr["city"].ToString();
                txtaddress.Text = sdr["address"].ToString();
                txtpin.Text = sdr["pin"].ToString();
                txtdescription.Text = sdr["description"].ToString();
                txtQualification.Text = sdr["qualification"].ToString();
                string status= sdr["status"].ToString();
                if (status == "Paid")
                    ddlstatus.SelectedIndex = 1;
                else
                    ddlstatus.SelectedIndex = 2;
                txtjoiningdate.Text = sdr["joining_date"].ToString();



                Image1.ImageUrl = sdr["photo"].ToString();

            }
        }
        catch (Exception ex)
        {
            throw ex;

        }
        finally
        {
            con.Close();
            con.Dispose();
            sdr.Dispose();

        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string pho,phot;
        if (picture.HasFile)
        {
            pho = Path.GetFileName(picture.PostedFile.FileName);
            picture.SaveAs(Server.MapPath("~/imageservice/"+ pho));
            phot = "~/imageservice/" + pho;
        }

        else
        {
           phot=Image1.ImageUrl;


        }
        string gender;
        if (rbmale.Checked == true)
            gender = rbmale.Text.ToString();
        else
            gender = rbfemale.Text.ToString();

        string strcon = @"Data Source=.;Initial Catalog=minions;Integrated Security=True";
        SqlConnection con = new SqlConnection(strcon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Addservicemen";
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@adharid", SqlDbType.VarChar).Value = txtadharid.Text.Trim();
        cmd.Parameters.Add("@firstname", SqlDbType.VarChar).Value = txtfname.Text.Trim();
        cmd.Parameters.Add("@lastname", SqlDbType.VarChar).Value = txtlname.Text.Trim();
        cmd.Parameters.Add("@age", SqlDbType.Int).Value = int.Parse(txtage.Text.Trim());
        cmd.Parameters.Add("@contact", SqlDbType.VarChar).Value = txtcontact.Text.Trim();
        cmd.Parameters.Add("@experience", SqlDbType.VarChar).Value = txtExperience.Text.Trim();
        cmd.Parameters.Add("@specialization_main", SqlDbType.VarChar).Value = ddloccupation.SelectedItem.Text.ToString();
        cmd.Parameters.Add("@Description", SqlDbType.VarChar).Value = txtdescription.Text.Trim();
        cmd.Parameters.Add("@city", SqlDbType.VarChar).Value = txtcity.Text.Trim();
        cmd.Parameters.Add("@pin", SqlDbType.Int).Value = int.Parse(txtpin.Text.Trim());
        cmd.Parameters.Add("@occuindex", SqlDbType.Int).Value = ddloccupation.SelectedIndex;
        cmd.Parameters.Add("@address", SqlDbType.VarChar).Value = txtaddress.Text.Trim();
        cmd.Parameters.AddWithValue("@action", 2);
        cmd.Parameters.Add("@status", SqlDbType.VarChar).Value = ddlstatus.SelectedItem.Text.Trim();
        cmd.Parameters.Add("@photo", SqlDbType.VarChar).Value = phot;
        cmd.Parameters.Add("@qualification", SqlDbType.VarChar).Value = txtQualification.Text.Trim();
        cmd.Parameters.Add("@joining_date", SqlDbType.VarChar).Value = txtjoiningdate.Text.Trim();
        cmd.Parameters.Add("@gender", SqlDbType.VarChar).Value = gender;
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
            Response.Redirect("viewservicemen.aspx");
        }
    }
}