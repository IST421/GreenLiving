<%@ Page Title="" Language="C#" MasterPageFile="~/GreenLiving.Master" AutoEventWireup="true" CodeBehind="UserPage.aspx.cs" Inherits="Team_Compostable.Pages.UserPage" %>
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
                <asp:Label ID="qqq" runat="server" Text="asdasd"></asp:Label>
                <img src="" id="sexy" />
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