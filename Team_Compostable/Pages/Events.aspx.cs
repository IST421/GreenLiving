﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using System.Data;
using System.Globalization;
using Team_Compostable.App_Code;

namespace Team_Compostable.Pages
{
    public partial class Events : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //If not a Postback - which is the first time the page loads
                if (!IsPostBack)
                {
                    //New DataSet object - productCatalog 
                    DataSet productCatalog = new DataSet();
                    //Read the contents of the XML file into the DataSet
                    productCatalog.ReadXml(MapPath("~/App_Data/ProductCatalog.xml"));
                    //Set the productCatalog Data to the repeater control - pCatalog
                    pCatalog.DataSource = productCatalog;
                    //Bind the data to the repeater control
                    pCatalog.DataBind();
                }
            }
            catch (Exception exc)
            {
                //ExceptionUtility.LogException(exc, "Reading the Sales Summary");
                Team_Compostable.App_Code.ExceptionUtility.LogException(exc, "Events");
            }

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
                Team_Compostable.App_Code.ExceptionUtility.LogException(exc, "Events");
            }
            
        }
    }
}