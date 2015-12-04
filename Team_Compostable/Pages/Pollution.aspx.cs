using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data;
using System.IO;
using System.Threading;
using System.Globalization;
using System.Configuration;

namespace Team_Compostable.Pages
{
    public partial class Pollution : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionInfo = ConfigurationManager.AppSettings["ChartImageHandler"];
            DataSet ds = new DataSet();
            ds.ReadXml(MapPath(".") + "/../App_Data/XMLFile2.xml");
            DataTable dt = ds.Tables[0];
            DataView dataView = new DataView(dt);
            Chart1.Series[0].Points.DataBindXY(dataView, "year", dataView, "totalCO2");

            DataSet ds2 = new DataSet();
            ds2.ReadXml(MapPath(".") + "/../App_Data/XMLFile1.xml");
           DataTable dt2 = ds2.Tables[0];
           DataView dataView2 = new DataView(dt2);
           Chart2.Series[0].Points.DataBindXY(dataView2, "year", dataView2, "totalMSkm");
           
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
    }
}