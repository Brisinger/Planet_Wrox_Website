using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class Demos_Email : BasePage
{
  protected void Page_Load(object sender, EventArgs e)
  {
    MailMessage myMessage = new MailMessage();
    myMessage.Subject = "Test Message";
    myMessage.Body = "Hello world, from Planet Wox.";
    myMessage.From = new MailAddress("shubhojit.dasgupta@gmail.com", "Shubhojit Dasgupta");
    myMessage.To.Add(new MailAddress("shubhojit.bindass@gmail.com", "Shubhojit"));
    SmtpClient mySmtpClient = new SmtpClient();
    mySmtpClient.Timeout = 20000;
    mySmtpClient.Send(myMessage);
  }
}