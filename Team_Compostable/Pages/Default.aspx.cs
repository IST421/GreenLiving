using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Threading;
using Team_Compostable.App_Code;

namespace Team_Compostable
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected override void InitializeCulture()
        {
            try
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
            catch (Exception exc)
            {
                //ExceptionUtility.LogException(exc, "Reading the Sales Summary");
                Team_Compostable.App_Code.ExceptionUtility.LogException(exc, "Default");
            }
            }
    }
}