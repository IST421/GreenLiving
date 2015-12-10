using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Data.Sql;
using Team_Compostable.datamine;

namespace Team_Compostable.Pages
{
    public partial class UserPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                //int seedAchievement = Convert.ToInt32(seed.Text);
                //int compostAchievemetn = Convert.ToInt32(compost.Text);
                //int showPowAchievement = Convert.ToInt32(shower.Text);
                //int teleAchievement = Convert.ToInt32(telecommute.Text);
                //int giftAchievement = Convert.ToInt32(giver.Text);
                //int naturalAchievement = Convert.ToInt32(giver.Text);
                //int forestSaverAch = Convert.ToInt32(forest.Text);
                //int cruisAch = Convert.ToInt32(cruise.Text);
                //int elecAch = Convert.ToInt32(ticket.Text);
                int profid = Convert.ToInt32(Session["id"]);
                sup.InnerHtml = Session["user"].ToString();
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["JoeDB"].ConnectionString))
                {

                    try
                    {
                        using (SqlCommand comm = new SqlCommand("getPoints", con))
                        {

                            comm.CommandType = CommandType.StoredProcedure;
                            comm.Parameters.AddWithValue("@id", profid);
                            con.Open();
                            SqlDataReader read = comm.ExecuteReader();
                            Label[] achievements = new Label[] { seed, compost, shower, telecommute, giver, naturaleza, forest, cruise, ticket };

                            int index = 0;
                            while (read.Read() && index < achievements.Length)
                            {
                                achievements[index].Text = read.GetString(0).ToString();
                                index++;
                            }
                            if (seed.Text.Equals("100"))
                            {
                                pic1.Text = string.Format("<img src='../Images/seedling.jpg' class='achIMG'/>");
                                pic1.CssClass = "regular";
                                pic1.Visible = false;
                                seed.Visible = false;
                                txtCar.Visible = false;
                            }
                            if (compost.Text.Equals("100"))
                            {
                                pic2.Text = string.Format("<img src='../Images/ComProster.png' class='achIMG'/>");
                                pic2.CssClass.Replace("achIMG animated", "");

                            }
                            if (shower.Text.Equals("100"))
                            {
                                pic3.Text = string.Format("<img src='../Images/ShowerPower.png' class='achIMG'/>");
                                pic3.CssClass = "";
                            }
                            if (telecommute.Text.Equals("100"))
                            {
                                pic4.Text = string.Format("<img src='../Images/HomeWork.png' class='achIMG'/>");
                                pic4.CssClass = "";
                            }
                            if (giver.Text.Equals("100"))
                            {
                                pic5.Text = string.Format("<img src='../Images/Charity.png' class='achIMG'/>");
                                pic5.CssClass = "";
                            }
                            if (naturaleza.Text.Equals("100"))
                            {
                                pic6.Text = string.Format("<img src='../Images/TreePlanting.png' class='achIMG'/>");
                                pic6.CssClass = "";
                            }
                            if (forest.Text.Equals("100"))
                            {
                                pic7.Text = string.Format("<img src='../Images/Forest.jpg' class='achIMG'/>");
                                pic7.CssClass = "";
                            }
                            if (cruise.Text.Equals("100"))
                            {
                                pic8.Text = string.Format("<img src='../Images/CruiseControl.png' class='achIMG'/>");
                                pic8.CssClass = "";
                            }
                            if (ticket.Text.Equals("100"))
                            {
                                pic9.Text = string.Format("<img src='../Images/World.jpg' class='achIMG'/>");
                                pic9.CssClass = "";
                            }
                        }
                    }
                    catch (Exception ar)
                    {
                        throw ar;
                    }
                    finally
                    {
                        con.Dispose();
                        con.Close();
                    }
                }
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["JoeDB"].ConnectionString)){
                    try
                    {
                        
                        var userNameList = new List<string>();
                        var userScoreList = new List<Int32>();
                        using (SqlCommand comm = new SqlCommand("leadeboards", con))
                        {
                            comm.CommandType = CommandType.StoredProcedure;
                            con.Open();
                            SqlDataReader read = comm.ExecuteReader();
                            
                            int index = 0;
                            while (read.Read() && index < 5)
                            {
                                userNameList.Add(read.GetString(0));
                                userScoreList.Add(read.GetInt32(1));
                            }
                        }



                        this.leaderBoardChart.Series["scores"].Points.AddXY(userNameList[0], userScoreList[0]);
                        this.leaderBoardChart.Series["scores"].Points.AddXY(userNameList[1], userScoreList[1]);
                        this.leaderBoardChart.Series["scores"].Points.AddXY(userNameList[2], userScoreList[2]);
                        this.leaderBoardChart.Series["scores"].Points.AddXY(userNameList[3], userScoreList[3]);
                        this.leaderBoardChart.Series["scores"].Points.AddXY(userNameList[4], userScoreList[4]);

                        userName1.Text = userNameList[0];
                        userScore1.Text = Convert.ToString(userScoreList[0]);
                        userName2.Text = userNameList[1];
                        userScore2.Text = Convert.ToString(userScoreList[1]);
                        userName3.Text = userNameList[2];
                        userScore3.Text = Convert.ToString(userScoreList[2]);
                        userName4.Text = userNameList[3];
                        userScore4.Text = Convert.ToString(userScoreList[3]);
                        userName5.Text = userNameList[4];
                        userScore5.Text = Convert.ToString(userScoreList[4]);
                    }
                    catch (Exception wqj)
                    {
                        throw wqj;
                    }
                    finally
                    {
                        con.Close();
                        con.Dispose();
                    }

                }
            }




            try
            {
                theuser2.InnerHtml = Session["user"].ToString();
                string area = Session["user"].ToString();
                //Service1Client datamine = new Service1Client();
                //datamine.sendBackdeets(Session["user"].ToString());

            }
            catch (NullReferenceException x)
            {
                //Logger.exception(x);
            }
        }


        protected void ach_Click(object sender, EventArgs e)
        {

            int compostAchievemetn = Convert.ToInt32(txtVan.Text);
            int showPowAchievement = Convert.ToInt32(txtTruck.Text);
            int teleAchievement = Convert.ToInt32(txtBus.Text);
            int forestSaverAch = Convert.ToInt32(TextBox2.Text);
            int cruisAch = Convert.ToInt32(TextBox3.Text);
            int profid = Convert.ToInt32(Session["id"]);

            int addCompost = Convert.ToInt32(compost.Text);
            int sumCompost = addCompost + compostAchievemetn;
            int addShowPow = Convert.ToInt32(shower.Text);
            int sumShowPow = showPowAchievement + addShowPow;
            int addTele = Convert.ToInt32(telecommute.Text);
            int sumTele = teleAchievement + addTele;
            int addForest = Convert.ToInt32(forest.Text);
            int sumForest = forestSaverAch + addForest;
            int addCruis = Convert.ToInt32(cruise.Text);
            int sumCruise = cruisAch + addCruis;


            Service1Client datamine = new Service1Client();
            datamine.updateAchievements(profid, 2212, sumCompost.ToString());
            datamine.updateAchievements(profid, 3234, sumShowPow.ToString());
            datamine.updateAchievements(profid, 3333, sumTele.ToString());
            datamine.updateAchievements(profid, 6666, sumForest.ToString());
            datamine.updateAchievements(profid, 7777, sumCruise.ToString());
            Response.Redirect("~/Pages/UserPage.aspx#Link2");
        }


    }
}