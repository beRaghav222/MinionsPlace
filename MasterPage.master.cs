using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class user_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            binddata();
        }
    }

    protected void binddata()
    {
        string strcon = ConfigurationManager.ConnectionStrings["minionsplace"].ConnectionString;
        SqlConnection con = new SqlConnection(strcon);
        SqlCommand cmd = new SqlCommand();
        
        cmd.CommandText = "  select * from occupationtype order by id desc";
        SqlDataAdapter sda = new SqlDataAdapter();
        cmd.Connection = con;
        sda.SelectCommand = cmd;
        DataTable dt = new DataTable();
        sda.Fill(dt);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
        cmd.Connection.Close();
        cmd.Connection.Dispose();
       


    }



}
