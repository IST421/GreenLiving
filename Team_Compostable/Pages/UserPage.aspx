<%@ Page Title="" Language="C#" MasterPageFile="~/GreenLiving.Master" AutoEventWireup="true" CodeBehind="UserPage.aspx.cs" Inherits="Team_Compostable.Pages.UserPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<%--Actual user settings and content--%>
<asp:Content ID="mainUserContent" ContentPlaceHolderID="mainUserContent" runat="server">
    <div class="userMainBOX">
        <div class="userSettings userNav">
            <ul>
                <li><a href="#Link1">User Welcome<i class="fa fa-arrow-circle-right"></i></a></li>
                <li><a href="#Link2">Achievements<i class="fa fa-arrow-circle-right"></i></a></li>
                <li><a href="#Link3">Calculator<i class="fa fa-arrow-circle-right"></i></a></li>
                <li><a href="#Link4">Account Edit<i class="fa fa-arrow-circle-right"></i></a></li>
                <li><a href="#Link5">Leaderboards<i class="fa fa-arrow-circle-right"></i></a></li>
                

            </ul>
            
        </div>

        <div class="userContent">

            <div id="Link1">

                <h1 class="colh1" runat="server" id="sup">sup dude</h1>
                <div id="accordion">

                    <h3>Seedling</h3>
                    <div>
                        <p id="left" class="pLeft">
                            <img src="../Images/seedling.jpg" class="achIMG" />                                             
                            Welcome to Team Compostable!
                            Automatically unlock the achievement by registering. 
                        </p>
                    </div>

                    <h3>The 100 Days of Compost</h3>
                    <div>
                        
                        <p class="pLeft"><img src="../Images/ComProster.png" class="achIMG" /> 
                            You've made an effort to compost for 100 days out of 365 days.</p>
                    </div>

                    <h3>Shower Power</h3>
                    <div>    
                                         
                        <p class="pLeft"><img src="../Images/ShowerPower.png" class="achIMG" />  Taking shorter showers conserves more than 10 gallons of water,
                             more fresh water for all! </p>
                    </div>

                    <h3>The Telecommute</h3>
                    <div>
                        
                        <p class="pLeft"><img src="../Images/HomeWork.png" class="achIMG" />Worked from home for 50 days!</p>
                    </div>

                    <h3>Charitable Character</h3>
                    <div>
                       
                        <p class="pLeft"><img src="../Images/Charity.png" class="achIMG" />
                            Rather than wasting it, you donate it, not only are you charitable to the envrinoment but to other people!</p>
                    </div>

                    <h3>Tree Hugger</h3>
                    <div>
                    
                        <p class="pLeft"><img src="../Images/TreePlanting.png" class="achIMG" />
                            Supported planting a tree</p>
                    </div>

                    <h3>Speak for the trees</h3>
                    <div>
                    
                        <p class="pLeft"><img src="../Images/Forest.jpg" class="achIMG" />
                            Participated in 4 forest saving sessions</p>
                    </div>

                    <h3>Use the Cruise</h3>
                    <div>
                  
                        <p class="pLeft"><img src="../Images/CruiseControl.png" class="achIMG" />
                            Spend over 100 hours in cruise in your car</p>
                    </div>

                    <h3>International!</h3>
                    <div>
                 
                        <p class="pLeft"><img src="../Images/World.jpg" class="achIMG" />
                            Puurchase an e-ticket, travel to a foreign country and visit a green landmark</p>
                    </div>    
                    <h3>Jolly and Green</h3>
                    <div>
                 
                        <p class="pLeft"><img src="../Images/JollyGreen.png" class="achIMG" />
                           Lives like a true Green Man!</p>
                    </div>        
                </div>

            </div>



            <div id="Link2"> 
                <%--<asp:Label ID="theUserSession" style="text-align:center" CssClass="colh1" runat="server">q</asp:Label>--%>
                <h1 class="colh1" id="theuser2" runat="server">hi</h1>
                <h1 class="colh1">Achievements<i class="fa fa-trophy"></i></h1>
                 <asp:Table CssClass="userTables" runat="server">

                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:Label runat="server" Text="Seedling: "></asp:Label>
                                    <asp:Label runat="server" Text="100" ID="seed"></asp:Label>
                                </asp:TableCell>

                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="txtCar" placeholder="label1" runat="server"></asp:TextBox>                        
                                </asp:TableCell>
                            
                                <asp:TableCell runat="server">
                                    <asp:Label runat="server" Text="Days of Compost: "></asp:Label>
                                    <asp:Label runat="server" Text="0" ID="compost"></asp:Label>
                                </asp:TableCell>

                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="txtVan" placeholder="label2" runat="server"></asp:TextBox>
                                    </asp:TableCell>
                           
                            
                                <asp:TableCell runat="server">
                                    <asp:Label runat="server" Text="Length of Shower: "></asp:Label>
                                    <asp:Label runat="server" Text="0" ID="shower"></asp:Label>
                                </asp:TableCell>

                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="txtTruck" placeholder="label3" runat="server"></asp:TextBox>
                                   </asp:TableCell>

                                 <asp:TableCell ID="pic1" CssClass="achIMG animated">?</asp:TableCell>
                                <asp:TableCell ID="pic2" CssClass="achIMG animated">?</asp:TableCell>
                                <asp:TableCell ID="pic3" CssClass="achIMG animated">?</asp:TableCell>
                                </asp:TableRow>
                    <%-- row2--%>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:Label runat="server" Text="Days of Work from Home: "></asp:Label>
                                    <asp:Label runat="server" Text="0" ID="telecommute"></asp:Label>
                                </asp:TableCell>

                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="txtBus" placeholder="label4" runat="server"></asp:TextBox>
                                   </asp:TableCell>

                            
                                <asp:TableCell runat="server">
                                    <asp:Label runat="server" placeholder="label5" Text="Charitability: "></asp:Label>
                                    <asp:Label runat="server" Text="0" Visible="false" ID="giver"></asp:Label>
                                </asp:TableCell>

                                <asp:TableCell runat="server">
                                    <%--<asp:TextBox ID="txtTaxi" placeholder="label5" runat="server"></asp:TextBox>--%>
                                    <asp:TextBox ID="gifty" runat="server" />
                                    
                                   </asp:TableCell>
                            
                   
                     
                                <asp:TableCell runat="server">
                                    <asp:Label runat="server" Text="Plant a Tree?"></asp:Label>
                                    <asp:Label runat="server" ID="naturaleza" Text="0" Visible="false"></asp:Label>
                                </asp:TableCell>

                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox1" placeholder="label6" runat="server"></asp:TextBox>
                                    <%--<asp:Button ID="prestineNature" Text="Mother Nature" runat="server"/>     --%>                   
                                </asp:TableCell>
                                <asp:TableCell ID="pic4" CssClass="achIMG animated">?</asp:TableCell>
                                <asp:TableCell ID="pic5" CssClass="achIMG animated">?</asp:TableCell>
                                <asp:TableCell ID="pic6" CssClass="achIMG animated">?</asp:TableCell>
                             </asp:TableRow>
                     <%--row3--%>
                     <asp:TableRow>
                                <asp:TableCell runat="server">
                                    <asp:Label runat="server" Text="Days Spent in Forest: "></asp:Label>
                                    <asp:Label runat="server" Text="0" ID="forest"></asp:Label>
                                </asp:TableCell>

                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox2" placeholder="label7" runat="server"></asp:TextBox>
                                    </asp:TableCell>
                           
                            
                                <asp:TableCell runat="server">
                                    <asp:Label runat="server" Text="Cruise Control Hours: "></asp:Label>
                                    <asp:Label runat="server" Text="0" ID="cruise"></asp:Label>
                                </asp:TableCell>

                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox3" placeholder="label8" runat="server"></asp:TextBox>
                                   </asp:TableCell>
                            
                                <asp:TableCell runat="server">
                                    <asp:Label runat="server" Text="E-Ticket Status: "></asp:Label>
                                    <asp:Label runat="server" Text="0" visible="false" ID="ticket"/>
                                </asp:TableCell>

                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox4" placeholder="label9" runat="server"></asp:TextBox>
                                    <%--<asp:Button ID="button2" runat="server" Text="Traveled!" />--%>
                                    
                                   </asp:TableCell>
                                  
                                <asp:TableCell ID="pic7" CssClass="achIMG animated">?</asp:TableCell>
                                <asp:TableCell ID="pic8" CssClass="achIMG animated">?</asp:TableCell>
                                <asp:TableCell ID="pic9" CssClass="achIMG animated">?</asp:TableCell>
                          </asp:TableRow>
                            
                          <asp:TableRow><asp:TableCell><asp:Button Text="Submit" OnClick="ach_Click" runat="server" /></asp:TableCell></asp:TableRow>
                           
                        </asp:Table>
            </div>

            <div id="Link3">
                test 3
            </div>

            <div id="Link4">
                test 4
            </div>

            <div id="Link5">
               <div style="width:100%;">

                   <div style="float:left;  margin:auto; width:50%;">
                       <asp:Chart ID="leaderBoardChart" Width="600px" Height="600px" BorderStyle="solid" runat="server">
                           <Titles>
                               <asp:Title Text="Leaderboard" Font="Relaway, 14" />
                           </Titles>

                           <Series>
                               <asp:Series ChartType="Column" Font="Relaway, 24px" Name="scores"></asp:Series>

                           </Series>
                           <ChartAreas>
                               <asp:ChartArea Name="ChartArea1">
                                   <AxisX Interval="1" Title="Users" TitleFont="Relaway, 14">
                                       <LabelStyle Font="Arial, 20" Angle="40" />
                                   </AxisX>
                                   <AxisY Interval="auto" Title="Scores" TitleFont="Relaway, 14" />
                               </asp:ChartArea>
                           </ChartAreas>
                       </asp:Chart>
                   </div>

                   <div style="float:right; margin:auto; width:50%;">
                       
                       <asp:Label runat="server" ID="userName1" Text=""></asp:Label>
                       <asp:Label runat="server" ID="userScore1" Text=""></asp:Label><br />
                       <asp:Label runat="server" ID="userName2" Text=""></asp:Label>
                       <asp:Label runat="server" ID="userScore2" Text=""></asp:Label><br />
                       <asp:Label runat="server" ID="userName3" Text=""></asp:Label>
                       <asp:Label runat="server" ID="userScore3" Text=""></asp:Label><br />
                       <asp:Label runat="server" ID="userName4" Text=""></asp:Label>
                       <asp:Label runat="server" ID="userScore4" Text=""></asp:Label><br />
                       <asp:Label runat="server" ID="userName5" Text=""></asp:Label>
                       <asp:Label runat="server" ID="userScore5" Text=""></asp:Label>
                   </div>
               </div>

               </div>
           

       </div>
   </div>

</asp:Content>