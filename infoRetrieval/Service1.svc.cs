using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Data.Sql;


namespace infoRetrieval
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    public class Service1 : IService1
    {
        static string strcon = ConfigurationManager.ConnectionStrings["JoeDB"].ConnectionString;
        static SqlConnection con = new SqlConnection(strcon);
        static SqlCommand comm = new SqlCommand();

        public string GetData(int value)
        {
            return string.Format("You entered: {0}", value);
        }

        public CompositeType GetDataUsingDataContract(CompositeType composite)
        {
            if (composite == null)
            {
                throw new ArgumentNullException("composite");
            }
            if (composite.BoolValue)
            {
                composite.StringValue += "Suffix";
            }
            return composite;
        }
        public string fnlName(string fname, string lname)
        {
            try
            {
                comm.CommandType = CommandType.StoredProcedure;
                comm.CommandText = "infoinsert";
                comm.Parameters.Add("@firstname", fname);
                comm.Parameters.Add("@lastname", lname);
                comm.Connection = con;
                con.Open();
                comm.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }
            return string.Format("nice {0} and {1}", fname, lname);
        }


    }
}
