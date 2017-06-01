using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
/// <summary>
/// Summary description for insert
/// </summary>
public class insert
{
    Class1 Connect = new Class1();

	public insert()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public bool insertupdatedelete(string qry, SqlParameter[] data)
    {
        int flag = 0;
        SqlConnection con = new SqlConnection(Connect.connection());
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = qry;
        cmd.Parameters.AddRange(data);
        try
        {
            con.Open();
            flag = cmd.ExecuteNonQuery();
            if (flag > 0)
            {
                return true;
            }
            else
            {
                return false;
            }

        }
        catch
        {
            return false;
        }
        finally
        {
            con.Close();
        }
    }
}