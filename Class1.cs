using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
    string str, srr;

    SqlCommand cmd;
    SqlConnection con;
    SqlDataReader dr;
    SqlDataAdapter da;
    DataSet ds;
    public string connection()
    {
        str = ConfigurationManager.ConnectionStrings["minionsplace"].ConnectionString;
        return str;
        //SqlConnection con = new SqlConnection(str);
        // con.Open();

    }


    public DataTable BindData(string spname,int action)
    {
        connection();
        conopen();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = spname;
        cmd.Parameters.AddWithValue("@action", action);
        SqlDataAdapter sda = new SqlDataAdapter();
        cmd.Connection = con;
        sda.SelectCommand = cmd;
        DataTable dt = new DataTable();
        sda.Fill(dt);
        return dt;
    }
    public DataTable BindDataView(string spname,int action,string adharid)
    {
        connection();
        conopen();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = spname;
        cmd.Parameters.AddWithValue("@action", action);
       
        SqlDataAdapter sda = new SqlDataAdapter();
        cmd.Parameters.AddWithValue("@adharid",adharid);
        cmd.Connection = con;
        sda.SelectCommand = cmd;
        DataTable dt = new DataTable();
        sda.Fill(dt);
        return dt;
    }
    public DataTable bindservicemen(string occutype)
    {
        connection();
        conopen();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "addservicemen";
        cmd.Parameters.AddWithValue("@action", 6);

        SqlDataAdapter sda = new SqlDataAdapter();
        cmd.Parameters.AddWithValue("@specialization_main", occutype);
        cmd.Connection = con;
        sda.SelectCommand = cmd;
        DataTable dt = new DataTable();
        sda.Fill(dt);
        return dt;
    }
    public DataTable bindservicemenfilter(string occutype,string area)
    {
        connection();
        conopen();
        
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "addservicemen";
        cmd.Parameters.AddWithValue("@action", 8);

        SqlDataAdapter sda = new SqlDataAdapter();
        cmd.Parameters.AddWithValue("@specialization_main", occutype);
        cmd.Parameters.AddWithValue("@city", area);
        cmd.Connection = con;
        sda.SelectCommand = cmd;
        DataTable dt = new DataTable();
        sda.Fill(dt);
        return dt;
    }
    public Class1()
    {


        str = ConfigurationManager.ConnectionStrings["minionsplace"].ConnectionString;
        con = new SqlConnection(str);

        //
        // TODO: Add constructor logic here
        //
    }
    public void conopen()
    {
        con.Open();
    }
    public void conclose()
    {
        con.Close();
    }
    public int storedata(string sql)
    {
        cmd = new SqlCommand(sql, con);

        int row = cmd.ExecuteNonQuery();
        return row;
    }


    public DataSet checkdoc_Email(string email, int action)
    {
        connection();
        cmd = new SqlCommand("checkpass", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@email", SqlDbType.VarChar, 30).Value = email;
        cmd.Parameters.Add("@action", SqlDbType.Int).Value = action;
        ds = new DataSet();
        da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        return ds;
    }

    public DataSet selectincome(int action, string hint)
    {
        connection();
        SqlCommand cmd = new SqlCommand("addpayment", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", action);
        cmd.Parameters.Add("@hint", SqlDbType.VarChar, 50).Value = hint;
        conopen();
        DataSet dt = new DataSet();
        da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        return dt;
    }
   

    public SqlDataReader select(string name, string pass)
    {
        connection();
        SqlCommand cmd = new SqlCommand("checkpass", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", 1);
        cmd.Parameters.Add("@username", SqlDbType.VarChar, 50).Value = name;
        cmd.Parameters.Add("@password", SqlDbType.VarChar, 50).Value = pass;
      
        SqlDataReader dr = cmd.ExecuteReader();
        return dr;

    }
    public SqlDataReader select1(string month, int action)
    {
        connection();
        SqlCommand cmd = new SqlCommand("timepd", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", action);
        cmd.Parameters.Add("@month", SqlDbType.VarChar, 50).Value = month;
        conopen();

        SqlDataReader dr = cmd.ExecuteReader();
        return dr;

    }
    //public SqlDataReader selectincome( int action,string hint)
    //{
    //    connection();
    //    SqlCommand cmd = new SqlCommand("addpayment", con);
    //    cmd.CommandType = CommandType.StoredProcedure;
    //    cmd.Parameters.AddWithValue("@action", action);
    //    cmd.Parameters.Add("@hint", SqlDbType.VarChar, 50).Value = hint;
    //    conopen();

    //    SqlDataReader dr = cmd.ExecuteReader();
    //    return dr;

    //}

    public void delete(string id, string spname, int action)
    {
        connection();
       
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = spname;
        cmd.Parameters.AddWithValue("@action", action);
        cmd.Parameters.AddWithValue("@id", id);
        cmd.Connection = con;
      
      cmd.ExecuteNonQuery();
      conclose();
       
      
    }

    public bool checkadharid(string adharid)
    {
        connection();
        SqlCommand cmd = new SqlCommand("addservicemen", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", 5);
        cmd.Parameters.Add("@adharid", SqlDbType.VarChar, 15).Value = adharid;
        conopen();
        SqlDataAdapter sda = new SqlDataAdapter();
       
        cmd.Connection = con;
        sda.SelectCommand = cmd;
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            return true;
        }
        else
            return false;
    }
    public DataTable bindddlfilter()
    {
        connection();
        SqlCommand cmd = new SqlCommand("addservicemen", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@action", 7);
       
        conopen();
        SqlDataAdapter sda = new SqlDataAdapter();

        cmd.Connection = con;
        sda.SelectCommand = cmd;
        DataTable dt = new DataTable();
        sda.Fill(dt);
        conclose();
        return dt;
       
       
    }

}