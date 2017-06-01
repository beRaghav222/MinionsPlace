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
public partial class admin_Registerservicemen : System.Web.UI.Page
{
    Class1 obj = new Class1();
    string pho;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (int.Parse(Session["key"].ToString()) <= 0)
            Response.Redirect("login.aspx");
        if (!IsPostBack)
            Binddropdownlist();



        if (picture.HasFile)
        {
            if (checkfile(picture.FileName))
            {


                int m = picture.PostedFile.ContentLength;
                int x = m / 1024;
                if (x > 500)
                {
                    Label1.Text = "plz upload maximume 500 kb";


                }


                else
                {
                    pho = picture.FileName;
                   
                    picture.SaveAs(Server.MapPath("~//imageservice/") + pho);
                    Image1.ImageUrl = "~//imageservice/"+ pho;
                    Label1.Text = "";
                }
            }


            else
            {
                Label1.Text = "plz choose image file";
            }

        }
        else
        {
            Label1.Text = "plz upload image file";
        }
    }


    public void Binddropdownlist()
    {
        
        


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





    protected void Button1_Click(object sender, EventArgs e)
    {
        


        









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
        cmd.Parameters.Add("@age", SqlDbType.Int).Value =int.Parse(txtage.Text.Trim());
        cmd.Parameters.Add("@contact", SqlDbType.VarChar).Value = txtcontact.Text.Trim();
        cmd.Parameters.Add("@experience", SqlDbType.VarChar).Value = txtExperience.Text.Trim();
        cmd.Parameters.Add("@specialization_main", SqlDbType.VarChar).Value = ddloccupation.SelectedItem.Text.ToString();
        cmd.Parameters.Add("@Description", SqlDbType.VarChar).Value = txtspecialsub.Text.Trim();
        cmd.Parameters.Add("@city", SqlDbType.VarChar).Value =txtcity.Text.Trim();
        cmd.Parameters.Add("@pin", SqlDbType.Int).Value =int.Parse(txtpin.Text.Trim());
        cmd.Parameters.Add("@occuindex", SqlDbType.Int).Value = ddloccupation.SelectedIndex;
        cmd.Parameters.Add("@address", SqlDbType.VarChar).Value =txtaddress.Text.Trim();
        cmd.Parameters.AddWithValue("@action", 1);
        cmd.Parameters.Add("@status", SqlDbType.VarChar).Value = ddlstatus.SelectedItem.Text.ToString();
        cmd.Parameters.Add("@photo", SqlDbType.VarChar).Value = "~/imageservice/" + pho;
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

            txtadharid.Text = txtfname.Text = txtfname.Text = txtage.Text = txtcontact.Text = txtExperience.Text = txtspecialsub.Text = txtcity.Text = txtpin.Text = txtaddress.Text  = txtQualification.Text = txtjoiningdate.Text = "";
            ddloccupation.SelectedIndex = 0;
            ddlstatus.SelectedIndex = 0;
            Image1.ImageUrl = "";
        }

        catch (Exception ex)
        {
            throw ex;

        }
        finally
        {

            con.Close();
            con.Dispose();
            Response.Redirect("registerservicemen.aspx");
        }






}




 public bool checkfile(string x )
            {
                string ext=Path.GetExtension(x);
                switch(ext)
                {
                    case ".jpg":
                        return true;
                    case ".bmp":
                        return true;
                    case ".gif":
                        return true;
                    case ".png":
                        return true;
                    default:
                        return false;
                }
            }

}