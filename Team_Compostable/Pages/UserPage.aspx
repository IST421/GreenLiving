﻿<%@ Page Title="" Language="C#" MasterPageFile="~/GreenLiving.Master" AutoEventWireup="true" CodeBehind="UserPage.aspx.cs" Inherits="Team_Compostable.Pages.UserPage" %>
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

                <h1 class="colh1">sup dude</h1>
                <div id="accordion">
                    <h3>Section 1</h3>
                    <div>
                        <p class="pRight circle">picture here</p>
                        <p class="pLeft">1</p>
                    </div>
                    <h3>Section 2</h3>
                    <div>
                        <p class="pRight circle">picture here</p>
                        <p class="pLeft">2</p>
                    </div>
                    <h3>Section 3</h3>
                    <div>
                        <p class="pRight circle">picture here</p>
                        <p class="pLeft">3</p>
                    </div>
                    <h3>Section 4</h3>
                    <div>
                        <p class="pRight circle">picture here</p>
                        <p class="pLeft">4</p>
                    </div>
                    <h3>Section 5</h3>
                    <div>
                        <p class="pRight circle">picture here</p>
                        <p class="pLeft">5</p>
                    </div>
                    <h3>Section 6</h3>
                    <div>
                        <p class="pRight circle">picture here</p>
                        <p class="pLeft">6</p>
                    </div>
                    <h3>Section 7</h3>
                    <div>
                        <p class="pRight circle">picture here</p>
                        <p class="pLeft">7</p>
                    </div>
                    <h3>Section 8</h3>
                    <div>
                        <p class="pRight circle">picture here</p>
                        <p class="pLeft">8</p>
                    </div>
                    <h3>Section 9</h3>
                    <div>
                        <p class="pRight circle">picture here</p>
                        <p class="pLeft">9</p>
                    </div>
                    <h3>Section 10</h3>
                    <div>
                        <p class="pRight circle">picture here</p>
                        <p class="pLeft">10</p>
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
                                    <asp:Label runat="server" Text="Charitability: "></asp:Label>
                                    <asp:Label runat="server" Text="0" Visible="false" ID="giver"></asp:Label>
                                </asp:TableCell>

                                <asp:TableCell runat="server">
                                    <%--<asp:TextBox ID="txtTaxi" placeholder="label5" runat="server"></asp:TextBox>--%>
                                    <asp:Button ID="gifts" Text="Yes!" runat="server"/>
                                   </asp:TableCell>
                            
                   
                     
                                <asp:TableCell runat="server">
                                    <asp:Label runat="server" Text="Plant a Tree?"></asp:Label>
                                    <asp:Label runat="server" ID="naturaleza" Text="0" Visible="false"></asp:Label>
                                </asp:TableCell>

                                <asp:TableCell runat="server">
                                    <%--<asp:TextBox ID="TextBox1" placeholder="label6" runat="server"></asp:TextBox>--%>
                                    <asp:Button ID="prestineNature" Text="Mother Nature" runat="server"/>                        
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
                                    <%--<asp:TextBox ID="TextBox4" placeholder="label9" runat="server"></asp:TextBox>--%>
                                    <asp:Button ID="button2" runat="server" Text="Traveled!" />
                                    
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
                test 5
            </div>

            

        </div>
    </div>

</asp:Content>