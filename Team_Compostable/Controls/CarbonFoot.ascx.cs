using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Team_Compostable.Controls
{
    public partial class CarbonFoot : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected double[] carbonFootprintCalculation(int[] housingCosts, int[] travelCosts, int[] foodCosts, int[] productCosts,int[] serviceCosts) 
        {
            
            //calculates the carboon foot print of a user if the values remained consistent throughout the year
            double total = 0;
        
            //calcuates carbon foot print of housing cost by multiplying each value by EF the average emmissions factor
            double housingCostsTotal = 0;
            
            double electricity = housingCosts[0]* 0.23135;
            double naturalGas = housingCosts[1]*3596.7;
            double fuelOil = housingCosts[2]*2.6941;
            double lPG = housingCosts[3]*1.5064;
            // Multiplying by 0.453592 Converts pounds to kilograms
            //Needs to be multiplied by 52 user input is only for the amount of waste produced weekly 
            double waste =(((housingCosts[4]*0.453592)*52)*0.53592);
           
            //Total carbon foot print of housing costs
            housingCostsTotal = electricity + naturalGas + fuelOil + lPG + waste;


            //calcuates carbon foot print of travel cost by multiplying each value by EF the average emmissions factor
            double travelCostsTotal = 0;
            
            //All Values need to be converted from miles to kilometers by multiplying by 1.60934
            double car = (travelCosts[0]*1.60934)*0.23398;
            double van = (travelCosts[1]*1.60934)*0.31941;
            double truck = (travelCosts[2]*1.60934)*0.8619;
            double bus = (travelCosts[3]*1.60934)*0.036124;
            double taxi = (travelCosts[4]*1.60934)*0.2531;
            double rail = (travelCosts[5]*1.60934)*0.083053;
            double flying = (travelCosts[6]*1.60934)*0.08974;
            
            //Total carbon foot print of housing costs
            travelCostsTotal = car + van + truck + bus + taxi + rail + flying;
            
            double foodCostsTotal = 0;
            double productCostsTotal = 0;
            double serviceCostsTotal = 0;

            total = housingCostsTotal + travelCostsTotal + foodCostsTotal + productCostsTotal + serviceCostsTotal;
            
            //Creates array for total scores to be returned back to the front end
            double[] totalScores = new double[3] {housingCostsTotal, travelCostsTotal, total};

            return totalScores;
        }
    }
}