using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using System.Globalization;
using System.Net.Mail;


namespace Team_Compostable
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitRegister_Click(object sender, EventArgs e)
        {
            MailMessage mail = new MailMessage();
            mail.To.Add(txtEmailAddress.Text);

            mail.From = new MailAddress("421.team3.greenliving@gmail.com");
            mail.Subject = "Welcome!" + txtFirstName;
            mail.Body = "Hello!";
            mail.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential
                 ("421.team3.greenliving@gmail.com", "421Team3Joe");

            smtp.EnableSsl = true;
            smtp.Send(mail);


        }
        //protected override void InitializeCulture()
        //{
        //    if ((string)Session["Langauge"] != null)
        //    {
        //        string selectedLanguage = (string)Session["Langauge"];
        //        UICulture = selectedLanguage;
        //        Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(selectedLanguage);
        //        Thread.CurrentThread.CurrentUICulture = new CultureInfo(selectedLanguage);
        //    }
        //    base.InitializeCulture();
        //}
     


    }
}