using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class  About_Email : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MailMessage myMessage = new MailMessage();
        myMessage.Subject = "Teste message";
        myMessage.Body = "Hello word,planet wrox";
        myMessage.From = new MailAddress("blouzada@live.com", "Bruno");
        myMessage.To.Add(new MailAddress("blgoes@gmail.com","bruno2"));
        SmtpClient mySmtpCliente = new SmtpClient();
        mySmtpCliente.Send(myMessage);
    }
}