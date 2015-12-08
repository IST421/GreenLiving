using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Net.Mail;
using Team_Compostable.retrieve;
using Team_Compostable.datamine;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Data.Sql;
using System.Web.UI.HtmlControls;


namespace Team_Compostable
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitRegister_Click(object sender, EventArgs e)
        {
            string theUser = txtUserName.Text.Trim();
            string thePass = txtPassword.Text.Trim();
            string thePassConfirmation = txtPasswordConfirmation.Text.Trim();
            string first = txtFirstName.Text.Trim();
            string last = txtLastName.Text.Trim();
            string email = txtEmailAddress.Text.Trim();
            string city = txtCity.Text.Trim();
            string state = txtState.Text.Trim();
            string country = txtCountry.Text.Trim();
            string telephone = txtTelephoneNumber.Text.Trim();

            //MailMessage mail = new MailMessage();
            //mail.To.Add(email);

            //mail.From = new MailAddress("421.team3.greenliving@gmail.com");
            //mail.Subject = "Welcome!" + first;
            //mail.Body = "Hello!";
            //mail.IsBodyHtml = true;

            //SmtpClient smtp = new SmtpClient();
            //smtp.Host = "smtp.gmail.com";
            //smtp.Port = 587;
            //smtp.Credentials = new System.Net.NetworkCredential
            //     ("421.team3.greenliving@gmail.com", "421Team3Joe");

            //smtp.EnableSsl = true;
            //smtp.Send(mail);

            Service1 retrieve = new Service1();
            if (validationcheck(theUser, thePass, thePassConfirmation, email, telephone) == true)
            {
                //string newPass = passHash(thePass);
                retrieve.userRegister(theUser, thePass, first, last, email, city, state, country, telephone);
                Session["user"] = theUser;
                Response.Redirect("~/Pages/UserPage.aspx");
            }
        }

        protected void loginSubmit_Click(object sender, EventArgs e)
        {
            string theUser = txtinUserName.Text.ToString().Trim();
            string thePass = txtinPassword.Text.ToString().Trim();
            //string newPass = passHash(thePass);
            Service1Client datamine = new Service1Client();
            int login = datamine.loginUser(theUser, thePass);
            if (login == 0)
            {
                Session["user"] = theUser;
                Response.Redirect("~/Pages/UserPage.aspx#Link1");
                
            }
            else
            {
                Response.Redirect("~/Pages/Default.aspx#openModal2");
                Response.Write("<script>alert('Incorrect User Name or Password')</script>");
            }
        }

        //public string passHash(string pword)
        //{
        //    String saltHasReturned = PasswordHash.CreateHash(pword);
        //    int commaIndex = saltHasReturned.IndexOf(":");
        //    String extractedString = saltHasReturned.Substring(0,commaIndex);
        //    commaIndex = saltHasReturned.IndexOf(":");
        //    extractedString = saltHasReturned.Substring(commaIndex + 1);
        //    commaIndex = extractedString.IndexOf(":");
        //    String salt = extractedString.Substring(0, commaIndex);
        //    commaIndex = extractedString.IndexOf(":");
        //    extractedString = extractedString.Substring(commaIndex + 1);
        //    String hash = extractedString;

        //    return saltHasReturned;
        //}

        public bool validationcheck(string chkuser, string chkpass1, string chkpass2, string chkemail, string chktelephone)
        {
            bool validationChecker = true;

            if (chkuser == "")
            {
                Response.Write("<script>alert('A User Name Was Not Entered')</script>");
            }
            if (chkpass1 == "")
            {
                Response.Write("<script>alert('No Passwords Were Entered')</script>");
            }
            if (InputValidation.validatePassowrd(chkpass1, chkpass2) == false)
            {
                Response.Write("<script>alert('Passwords Did Not Match')</script>");
                validationChecker = false;
            }
            if (InputValidation.validateEmail(chkemail) == false)
            {
                Response.Write("<script>alert('Email was incorrect')</script>");
                validationChecker = false;
            }
            if (InputValidation.validatePhoneNumber(chktelephone) == false)
            {
                Response.Write("<script>alert('Invalid Phone Number')</script>");
                validationChecker = false;
            }
            return validationChecker;
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