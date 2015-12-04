using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using System.Globalization;
using System.Net.Mail;


namespace Team_Compostable.Pages
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected override void InitializeCulture()
        {
            if ((string)Session["Language"] != null)
            {
                string selectedLanguage = (string)Session["Language"];
                UICulture = selectedLanguage;
                Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(selectedLanguage);
                Thread.CurrentThread.CurrentUICulture = new CultureInfo(selectedLanguage);
            }
            base.InitializeCulture();
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                MailMessage mail = new MailMessage();
                mail.To.Add(txtEmail.Text);

                mail.From = new MailAddress("421.team3.greenliving@gmail.com");
                mail.Subject = ddlSubject.Text;
                mail.Body = txtMessage.Text;
                mail.IsBodyHtml = true;
                
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential
                     ("421.team3.greenliving@gmail.com", "421Team3Joe");

                smtp.EnableSsl = true;
                smtp.Send(mail);
                lblResult.Text = "Thank You";
            }
            else
            {
                lblResult.Text = "Fill up all the fields";
            }
        }
    }
}