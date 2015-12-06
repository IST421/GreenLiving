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
        //static SqlConnection con = new SqlConnection(strcon);
        //static SqlCommand comm = new SqlCommand();

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
        public void userRegister(string username, string password, string firstname, string lastname, string email, string city, string state, string country, string telephone)
        {
            using (SqlConnection con = new SqlConnection(strcon))
            {
                try
                { 
                    using (SqlCommand comm = new SqlCommand("userRegistration",con))
                    {
                       comm.CommandType = CommandType.StoredProcedure;
                        comm.Parameters.AddWithValue("@username", username);
                        comm.Parameters.AddWithValue("@userPass", password);
                        comm.Parameters.AddWithValue("@firstName",firstname);
                        comm.Parameters.AddWithValue("@lastName",lastname);
                        comm.Parameters.AddWithValue("@email",email);
                        comm.Parameters.AddWithValue("@city",city);
                        comm.Parameters.AddWithValue("@state",state);
                        comm.Parameters.AddWithValue("@country",country);
                        comm.Parameters.AddWithValue("@userTelephone",telephone);
                        con.Open();
                        comm.ExecuteNonQuery();
                    }
                }
                catch(Exception et){
                    throw et;
                }
                finally
                {
                    con.Close();
                    con.Dispose();
                }
            }
        }
        public void fnlName(string fname, string lname)
        {
            using (SqlConnection con = new SqlConnection(strcon))
            {
                try
                {

                    using (SqlCommand comm = new SqlCommand("infoinsert", con))
                    {
                        comm.CommandType = CommandType.StoredProcedure;
                        comm.Parameters.AddWithValue("@firstname", fname);
                        comm.Parameters.AddWithValue("@lastname", lname);
                        comm.Connection = con;
                        con.Open();
                        comm.ExecuteNonQuery();
                    }
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
            }
        }
    }
}
