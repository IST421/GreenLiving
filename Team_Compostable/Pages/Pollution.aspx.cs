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

           this.Chart3.Series["SurfaceTemp"].Points.AddXY(2020, 0);
           this.Chart3.Series["SurfaceTemp"].Points[0].IsEmpty = true;
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1882, -0.10);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1883, -0.20);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1884, -0.28);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1885, -0.31);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1886, -0.31);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1887, -0.33);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1888, -0.20);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1889, -0.12);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1890, -0.37);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1891, -0.24);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1892, -0.26);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1893, -0.29);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1894, -0.30);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1895, -0.21);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1896, -0.14);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1897, -0.11);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1898, -0.29);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1899, -0.16);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1900, -0.09);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1901, -0.14);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1902, -0.28);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1903, -0.36);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1904, -0.44);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1905, -0.28);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1906, -0.22);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1907, -0.40);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1908, -0.43);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1909, -0.47);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1910, -0.43);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1911, -0.45);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1912, -0.35);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1913, -0.34);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1914, -0.16);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1915, -0.11);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1916, -0.34);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1917, -0.40);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1918, -0.25);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1919, -0.22);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1920, -0.26);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1921, -0.20);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1922, -0.27);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1923, -0.23);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1924, -0.27);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1925, -0.20);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1926, -0.10);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1927, -0.21);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1928, -0.22);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1929, -0.36);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1930, -0.14);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1931, -0.10);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1932, -0.17);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1933, -0.29);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1934, -0.14);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1935, -0.20);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1936, -0.15);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1937, -0.02);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1938, -0.03);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1939, -0.03);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1940, 0.08);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1941, 0.12);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1942, 0.10);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1943, 0.13);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1944, 0.25);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1945, 0.12);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1946, -0.04);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1947, -0.04);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1948, -0.10);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1949, -0.10);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1950, -0.18);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1951, -0.07);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1952, 0.01);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1953, 0.08);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1954, -0.12);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1955, -0.14);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1956, -0.19);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1957, 0.04);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1958, 0.06);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1959, 0.03);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1960, -0.03);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1961, 0.05);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1962, 0.03);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1963, 0.06);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1964, -0.21);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1965, -0.10);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1966, -0.05);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1967, -0.02);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1968, -0.07);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1969, 0.06);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1970, 0.03);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1971, -0.09);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1972, 0.01);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1973, 0.15);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1974, -0.08);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1975, -0.01);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1976, -0.11);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1977, 0.18);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1978, 0.07);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1979, 0.17);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1980, 0.28);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1981, 0.33);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1982, 0.13);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1983, 0.31);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1984, 0.16);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1985, 0.12);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1986, 0.19);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1987, 0.34);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1988, 0.40);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1989, 0.29);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1990, 0.44);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1991, 0.43);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1992, 0.23);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1993, 0.24);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1994, 0.32);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1995, 0.46);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1996, 0.35);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1997, 0.48);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1998, 0.64);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(1999, 0.42);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(2000, 0.42);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(2001, 0.55);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(2002, 0.63);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(2003, 0.62);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(2004, 0.55);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(2005, 0.69);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(2006, 0.63);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(2007, 0.66);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(2008, 0.54);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(2009, 0.65);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(2010, 0.72);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(2011, 0.61);
           this.Chart3.Series["SurfaceTemp"].Points.AddXY(2012, 0.63);

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