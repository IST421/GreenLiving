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
using Team_Compostable.datamine;

namespace Team_Compostable.Pages
{
    public partial class CarbonCalc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Chart4.Series["Emissions"].Points.AddXY("United States", 18.1);
            this.Chart4.Series["Emissions"].Points.AddXY("Germany", 9.6);
            this.Chart4.Series["Emissions"].Points.AddXY("Spain", 6.8);
            this.Chart4.Series["Emissions"].Points.AddXY("Japan", 9.2);
            this.Chart4.Series["Emissions"].Points.AddXY("Europe", 7.2);
            this.Chart4.Series["Emissions"].Points.AddXY("Austria", 8.5);
            this.Chart4.Series["Emissions"].Points.AddXY("France", 6.2);
            this.Chart4.Series["Emissions"].Points.AddXY("Iceland", 10.9);
            this.Chart4.Series["Emissions"].Points.AddXY("Ireland", 8.8);
            this.Chart4.Series["Emissions"].Points.AddXY("Italy", 7.2);
            this.Chart4.Series["Emissions"].Points.AddXY("Netherlands", 15.7);
            this.Chart4.Series["Emissions"].Points.AddXY("Sweden", 6.9);
            this.Chart4.Series["Emissions"].Points.AddXY("Switzerland", 5.9);
            this.Chart4.Series["Emissions"].Points.AddXY("Iran", 7.3);
            this.Chart4.Series["Emissions"].Points.AddXY("Russia", 11.7);
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

        //calculates the carboon foot print of a user if the values remained consistent throughout the year
        protected double[] carbonFootprintCalculation(double[] housingCosts, double[] travelCosts)
        {

            double total = 0;

            //calcuates carbon foot print of housing cost by multiplying each value by EF the average emmissions factor
            double housingCostsTotal = 0;

            double electricity = housingCosts[0] * 0.23135;
            double naturalGas = housingCosts[1] * 3596.7;
            //Converts liters to gallon by multiplying values by 3.78541
            double fuelOil = ((housingCosts[2] * 3.78541) * 2.6941);
            double lPG = ((housingCosts[3]*3.78541) * 1.5064);
            // Multiplying by 0.453592 Converts pounds to kilograms
            //Needs to be multiplied by 52 user input is only for the amount of waste produced weekly 
            double waste = (((housingCosts[4] * 0.453592) * 52) * 0.53592);

            //Total carbon foot print of housing costs
            housingCostsTotal = electricity + naturalGas + fuelOil + lPG + waste;


            //calcuates carbon foot print of travel cost by multiplying each value by EF the average emmissions factor
            double travelCostsTotal = 0;

            //All Values need to be converted from miles to kilometers by multiplying by 1.60934
            double car = (travelCosts[0] * 1.60934) * 0.23398;
            double van = (travelCosts[1] * 1.60934) * 0.31941;
            double truck = (travelCosts[2] * 1.60934) * 0.8619;
            double bus = (travelCosts[3] * 1.60934) * 0.036124;
            double taxi = (travelCosts[4] * 1.60934) * 0.2531;
            double rail = (travelCosts[5] * 1.60934) * 0.083053;
            double flying = (travelCosts[6] * 1.60934) * 0.08974;

            //Total carbon foot print of housing costs
            travelCostsTotal = car + van + truck + bus + taxi + rail + flying;

            total = housingCostsTotal + travelCostsTotal;

            //Creates array for total scores to be returned back to the front end
            double[] totalScores = new double[3] { housingCostsTotal, travelCostsTotal, total };

            return totalScores;
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            //Puts the values from the text boxes into an array
            double[] housingCosts = new double[5] { Convert.ToDouble(txtElectricity.Text), Convert.ToDouble(txtNaturalGas.Text), Convert.ToDouble(txtFuelOil.Text), Convert.ToDouble(txtLPG.Text), Convert.ToDouble(txtWaste.Text), };

            double[] travelCosts = new double[7] { Convert.ToDouble(txtCar.Text), Convert.ToDouble(txtVan.Text), Convert.ToDouble(txtTruck.Text), Convert.ToDouble(txtBus.Text), Convert.ToDouble(txtTaxi.Text), Convert.ToDouble(txtTrain.Text), Convert.ToDouble(txtPlane.Text), };
           
            //Passes the values from the text boxes into the calculation
            double[] carbonFootPrint = carbonFootprintCalculation(housingCosts, travelCosts);
            
            //Displays scores to user
            txtUtilitiesScore.Text = Convert.ToString(carbonFootPrint[0]);
            txtTransScore.Text = Convert.ToString(carbonFootPrint[1]);
            txtTotal.Text = Convert.ToString(carbonFootPrint[2]);

            //string uname = Session["user"].ToString();
            //double points = carbonFootPrint[2];
            //Service1Client datamine = new Service1Client();
            ////datamine.carbonInsert(uname, points);
        }

    }
}