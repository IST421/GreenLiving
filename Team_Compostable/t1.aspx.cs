using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Team_Compostable.retrive;

namespace Team_Compostable
{
    public partial class t1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Submitter_Click(object sender, EventArgs e)
        {
            Service1 retrive = new Service1();
            retrive.fnlName("spanish20","IST421");

        }
    }
}