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
                    using (SqlCommand comm = new SqlCommand("userRegistration", con))
                    {
                        comm.CommandType = CommandType.StoredProcedure;
                        comm.Parameters.AddWithValue("@username", username);
                        comm.Parameters.AddWithValue("@userPass", password);
                        comm.Parameters.AddWithValue("@firstName", firstname);
                        comm.Parameters.AddWithValue("@lastName", lastname);
                        comm.Parameters.AddWithValue("@email", email);
                        comm.Parameters.AddWithValue("@city", city);
                        comm.Parameters.AddWithValue("@state", state);
                        comm.Parameters.AddWithValue("@country", country);
                        comm.Parameters.AddWithValue("@userTelephone", telephone);
                        comm.Parameters.AddWithValue("@initialScore",0);
                        con.Open();
                        comm.ExecuteNonQuery();
                    }
                }

                catch (Exception et)
                {
                    throw et;
                }
                finally
                {
                    con.Close();
                    con.Dispose();
                }
            }
        }
        public int getprofileID(string username)
        {
            using (SqlConnection con = new SqlConnection(strcon))
            {

                int profileID = 0;

                try
                {
                    using (SqlCommand comm = new SqlCommand("getProfID", con))
                    {
                        int localID = 0;
                        comm.CommandType = CommandType.StoredProcedure;
                        comm.Parameters.AddWithValue("@uname", username);
                        con.Open();
                        SqlDataReader read = comm.ExecuteReader();
                        while (read.Read())
                        {
                            localID = Convert.ToInt32(read.GetInt32(0));
                        }
                        profileID = localID;
                    }
                }
                catch (Exception a)
                {
                    throw a;
                }
                finally
                {
                    con.Close();
                    con.Dispose();
                }
                return profileID;
            }
        }

        public void createuserAchievements(int profID, int acheivements, string achievemenetpoints)
        {
            using (SqlConnection con = new SqlConnection(strcon))
            {
                try
                {
                    using (SqlCommand comm = new SqlCommand("achievementInsert", con))
                    {
                        comm.CommandType = CommandType.StoredProcedure;
                        comm.Parameters.AddWithValue("@profID", profID);
                        comm.Parameters.AddWithValue("@achievementID", acheivements);
                        comm.Parameters.AddWithValue("@achievementpoints", achievemenetpoints);
                        con.Open();
                        comm.ExecuteNonQuery();
                    }
                }
                catch (Exception b)
                {
                    throw b;
                }
                finally
                {
                    con.Close();
                    con.Dispose();
                }
            }
        }


        public void updateAchievements(int profileID, int achievement, string actualvalue)
        {
            using (SqlConnection con = new SqlConnection(strcon))
            {
                try
                {
                    using (SqlCommand comm = new SqlCommand("updateAchievement", con))
                    {
                        comm.CommandType = CommandType.StoredProcedure;
                        comm.Parameters.AddWithValue("@id", profileID);
                        comm.Parameters.AddWithValue("@aid", achievement);
                        comm.Parameters.AddWithValue("@points", actualvalue);
                        con.Open();
                        comm.ExecuteNonQuery();
                    }
                }
                catch (Exception b)
                {
                    throw b;
                }
                finally
                {
                    con.Close();
                    con.Dispose();
                }
            }
        }
        

        public void carbonInsert(string username, double score)
        {
            using (SqlConnection con = new SqlConnection(strcon))
            {
                try
                {
                    using (SqlCommand comm = new SqlCommand("userDate", con))
                    {
                        comm.CommandType = CommandType.StoredProcedure;
                        comm.Parameters.AddWithValue("@userName", username);
                        comm.Parameters.AddWithValue("@points", score);
                        con.Open();
                        comm.ExecuteNonQuery();
                    }
                }
                catch (Exception dmx)
                {
                    throw dmx;
                }
                finally
                {
                    con.Close();
                    con.Dispose();
                }
            }
        }

        public int loginUser(string username, string password)
        {
            using (SqlConnection con = new SqlConnection(strcon))
            {
                int returnvalue = 0;
                try
                {
                    using (SqlCommand comm = new SqlCommand("loginValidation", con))
                    {
                        comm.CommandType = CommandType.StoredProcedure;
                        comm.Parameters.AddWithValue("@username", username);
                        comm.Parameters.AddWithValue("@password", password);
                        con.Open();
                        SqlParameter p1 = new SqlParameter("ret", SqlDbType.Int);
                        p1.Direction = ParameterDirection.ReturnValue;
                        comm.Parameters.Add(p1);
                        comm.ExecuteNonQuery();
                        returnvalue = Convert.ToInt32(comm.Parameters["ret"].Value);

                    }
                }
                catch (Exception e)
                {
                    throw e;
                }
                finally
                {
                    con.Close();
                    con.Dispose();
                }
                return returnvalue;
            }
        }

        public userDeets sendBackdeets(string username)
        {
            using (SqlConnection con = new SqlConnection(strcon))
            {
                string userCountry = "";
                string userCity = "";
                try
                {
                    using (SqlCommand comm = new SqlCommand("recieveCountry", con))
                    {
                        string ucountry = "";
                        string ucity = "";
                        comm.CommandType = CommandType.StoredProcedure;
                        comm.Parameters.AddWithValue("@username", username);
                        con.Open();
                        SqlDataReader read = comm.ExecuteReader();
                        while (read.Read())
                        {
                            ucountry = read.GetString(0).ToString();
                            ucity = read.GetString(1).ToString();
                        }
                        userCountry = ucountry;
                        userCity = ucity;
                    }
                }
                catch (Exception nmsqt)
                {
                    throw nmsqt;
                }
                finally
                {
                    con.Close();
                    con.Dispose();
                }
                return new userDeets()
                {
                    country = userCountry,
                    city = userCity
                };
            }
        }
    }
}