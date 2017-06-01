using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data;
public partial class admin_forget : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click1(object sender, EventArgs e)
    {
        DataSet ds = obj.checkdoc_Email(txtemail.Text.ToString(), 2);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["name"] = ds.Tables[0].Rows[0].ItemArray[0].ToString();
            Session["password"] = ds.Tables[0].Rows[0].ItemArray[1].ToString();
            try
            {
                MailMessage mailmessage = new MailMessage();
                mailmessage.To.Add(txtemail.Text.Trim());
                mailmessage.From = new MailAddress("softwaredevelopervikky@gmail.com", "MinionsPlace.com");
                mailmessage.Subject = "Reset your Password";
                mailmessage.Body = " Dear " + Session["name"].ToString() + " Your Email is " + txtemail.Text + "  Your password is " + Session["password"].ToString();
                SmtpClient smtpclient = new SmtpClient();
                smtpclient.Host = "smtp.gmail.com";
                smtpclient.EnableSsl = true;
                smtpclient.Port = 587;
                smtpclient.UseDefaultCredentials = true;
                smtpclient.Credentials = new System.Net.NetworkCredential("softwaredevelopervikky@gmail.com", "mr.perfect");
                smtpclient.Send(mailmessage);
                //smtpclient.Port = 587;
                //smtpclient.Send(mailmessage);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "alert('Message Send Successfully');", true);
                //lbl_sendmail.Text = "Message Send Successfully";
                //lbl_sendmail.Visible = true;
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "alert('Message sending failed');", true);
                //lbl_sendmail.Text = "Message sending failed";
                //lbl_sendmail.Visible = true;
            }


        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "", "alert('Mail does'nt match');", true);
            //lbl_sendmail.Text = "Mail doesn't match with the records";
        }

        Response.Redirect("login.aspx");

    }
}

