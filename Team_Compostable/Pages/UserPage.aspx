﻿<%@ Page Title="" Language="C#" MasterPageFile="~/GreenLiving.Master" AutoEventWireup="true" CodeBehind="UserPage.aspx.cs" Inherits="Team_Compostable.Pages.UserPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<%--Actual user settings and content--%>
<asp:Content ID="mainUserContent" ContentPlaceHolderID="mainUserContent" runat="server">
    <div class="userMainBOX">
        <div class="userSettings userNav">
            <ul>

                <li><a href="#Link1">Achievements<i class="fa fa-arrow-circle-right"></i></a></li>
                <li><a href="#Link2">Calculator<i class="fa fa-arrow-circle-right"></i></a></li>
                <li><a href="#Link3">Account Edit<i class="fa fa-arrow-circle-right"></i></a></li>
                <li><a href="#Link4">Leaderboards<i class="fa fa-arrow-circle-right"></i></a></li>
                <li><a href="#Link5">Link5<i class="fa fa-arrow-circle-right"></i></a></li>

            </ul>
            
        </div>

        <div class="userContent">
            <div id="Link1">
                <h1 class="colh1">Achievements<i class="fa fa-trophy"></i></h1>
                 <asp:Table CssClass="userTables" runat="server">

                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:Label runat="server" Text="Text1: "></asp:Label>
                                </asp:TableCell>

                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="txtCar" placeholder="label1" runat="server"></asp:TextBox>                        
                                </asp:TableCell>
                            
                                <asp:TableCell runat="server">
                                    <asp:Label runat="server" Text="Text2: "></asp:Label>
                                </asp:TableCell>

                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="txtVan" placeholder="label2" runat="server"></asp:TextBox>
                                    </asp:TableCell>
                           
                            
                                <asp:TableCell runat="server">
                                    <asp:Label runat="server" Text="Text3: "></asp:Label>
                                </asp:TableCell>

                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="txtTruck" placeholder="label3" runat="server"></asp:TextBox>
                                   </asp:TableCell>

                                 <asp:TableCell ID="pic1" CssClass="achIMG animated">pic1</asp:TableCell>
                                <asp:TableCell ID="pic2" CssClass="achIMG animated">pic2</asp:TableCell>
                                <asp:TableCell ID="pic3" CssClass="achIMG animated">pic3</asp:TableCell>
                                </asp:TableRow>
                    <%-- row2--%>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:Label runat="server" Text="Text4: "></asp:Label>
                                </asp:TableCell>

                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="txtBus" placeholder="label4" runat="server"></asp:TextBox>
                                   </asp:TableCell>

                            
                                <asp:TableCell runat="server">
                                    <asp:Label runat="server" Text="Text5: "></asp:Label>
                                </asp:TableCell>

                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="txtTaxi" placeholder="label5" runat="server"></asp:TextBox>
                                   </asp:TableCell>
                            
                   
                     
                                <asp:TableCell runat="server">
                                    <asp:Label runat="server" Text="Text6: "></asp:Label>
                                </asp:TableCell>

                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox1" placeholder="label6" runat="server"></asp:TextBox>                        
                                </asp:TableCell>
                                <asp:TableCell ID="pic4" CssClass="achIMG animated">pic4</asp:TableCell>
                                <asp:TableCell ID="pic5" CssClass="achIMG animated">pic5</asp:TableCell>
                                <asp:TableCell ID="pic6" CssClass="achIMG animated">pic6</asp:TableCell>
                             </asp:TableRow>
                     <%--row3--%>
                     <asp:TableRow>
                                <asp:TableCell runat="server">
                                    <asp:Label runat="server" Text="Text7: "></asp:Label>
                                </asp:TableCell>

                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox2" placeholder="label7" runat="server"></asp:TextBox>
                                    </asp:TableCell>
                           
                            
                                <asp:TableCell runat="server">
                                    <asp:Label runat="server" Text="Text8: "></asp:Label>
                                </asp:TableCell>

                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox3" placeholder="label8" runat="server"></asp:TextBox>
                                   </asp:TableCell>
                            
                                <asp:TableCell runat="server">
                                    <asp:Label runat="server" Text="Text9: "></asp:Label>
                                </asp:TableCell>

                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="TextBox4" placeholder="label9" runat="server"></asp:TextBox>
                                    
                                   </asp:TableCell>
                                  
                                <asp:TableCell ID="pic7" CssClass="achIMG animated">pic7</asp:TableCell>
                                <asp:TableCell ID="pic8" CssClass="achIMG animated">pic8</asp:TableCell>
                                <asp:TableCell ID="pic9" CssClass="achIMG animated">pic9</asp:TableCell>
                          </asp:TableRow>
                            
                          <asp:TableRow><asp:TableCell><asp:Button Text="Submit" runat="server" /></asp:TableCell></asp:TableRow>
                           
                        </asp:Table>

            </div>

            <div id="Link2">
                test 2
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