using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Team_Compostable.Controls
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        string PageName;
        protected void Page_Load(object sender, EventArgs e)
        {
            string sPath = System.Web.HttpContext.Current.Request.Url.AbsolutePath;
            System.IO.FileInfo oInfo = new System.IO.FileInfo(sPath);
            PageName = oInfo.Name;
        }

        protected void EnglishFlag_Click(object sender, ImageClickEventArgs e)
        {
            Session["Language"] = "en";
            Response.Redirect(PageName);
        }

        protected void GermanFlag_Click(object sender, ImageClickEventArgs e)
        {
            Session["Language"] = "de";
            Response.Redirect(PageName);
        }

        protected void SpanishFlag_Click(object sender, ImageClickEventArgs e)
        {
            Session["Language"] = "es";
            Response.Redirect(PageName);
        }
    }
}