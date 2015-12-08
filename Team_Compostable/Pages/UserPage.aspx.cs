using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Team_Compostable.datamine;

namespace Team_Compostable.Pages
{
    public partial class UserPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                try
                {
                    theuser2.InnerHtml = Session["user"].ToString();
                    string area = Session["user"].ToString();
                    Service1Client datamine = new Service1Client();
                    datamine.sendBackdeets(Session["user"].ToString());
                    
                }
                catch (NullReferenceException x)
                {
                    //Logger.exception(x);
                }
            }
        }
    }
}