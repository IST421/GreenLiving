using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Threading;

namespace Team_Compostable
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected override void InitializeCulture()
        {
            if ((string)Session["Langauge"]!= )
            {
                string selectedLanguage = (string)Session["Langauge"];
                UICulture = selectedLanguage;
                Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(selectedLanguage);
                Thread.CurrentThread.CurrentUICulture = new CultureInfo(selectedLanguage);
            }
            base.InitializeCulture();
        }
    }
}