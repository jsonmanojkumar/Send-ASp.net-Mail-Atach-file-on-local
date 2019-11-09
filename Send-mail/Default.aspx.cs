using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.IO;

public partial class _Default : System.Web.UI.Page
{
 

    protected void Page_Load(object sender, EventArgs e)
    {


    }




    /*  protected void Button1_Click(object sender, EventArgs e)
      {
          SmtpClient smtp = new SmtpClient();
          smtp.Host = "smtp.gmail.com";
          smtp.Port = 587;
          smtp.Credentials = new System.Net.NetworkCredential("haritisyal@gmail.com", "Your Password Here");
          smtp.EnableSsl = true;
          MailMessage msg = new MailMessage();
          msg.Subject = "Hello " + TextBox1.Text + "  Thanks for Register at Hariti Study Hub";
          msg.Body = "Hi, Thanks For Your Registration at Hariti Study Hub, We will Provide You The Latest Update. Thanks";
          string toaddress =TextBox2.Text;
          msg.To.Add(toaddress);
          string fromaddress = "Hariti Study Hub <HaritiSyal@gmail.com>";
          msg.From = new MailAddress(fromaddress);
          try
          {
              smtp.Send(msg);
              Label3.Text = "Your Email Has Been Registered with Us";
              TextBox1.Text = "";
              TextBox2.Text = "";

          }
          catch
          {
              throw;
          }
      }*/



    protected void Button1_Click(object sender, EventArgs e)
    {
        MailMessage m = new MailMessage();
        SmtpClient sc = new SmtpClient();

        MailMessage msg = new MailMessage();
        msg.From = new MailAddress("Manojparken@gmail.com");
        msg.To.Add(TextBox1.Text);
      
        msg.Subject = "Hello "+ TextBox4.Text;
        msg.Body = TextBox3.Text;


        if (FileUpload1.HasFile)
        {
            string FileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            msg.Attachments.Add(new Attachment(FileUpload1.PostedFile.InputStream, FileName));
        }

        SmtpClient smt = new SmtpClient();
        msg.IsBodyHtml = false;
        smt.Host = "smtp.gmail.com";
        System.Net.NetworkCredential ntwd = new NetworkCredential();
        ntwd.UserName = "Manojparken@gmail.com"; //Your Email ID  
        ntwd.Password = "166819531"; // Your Password  
        smt.UseDefaultCredentials = true;
        smt.Credentials = ntwd;
        smt.Port = 587;
        smt.EnableSsl = true;
        smt.Send(msg);
        lbmsg.Text = "Email Sent Successfully";
        lbmsg.ForeColor = System.Drawing.Color.ForestGreen;

        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
    }
}