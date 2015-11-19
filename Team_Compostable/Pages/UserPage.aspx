<%@ Page Title="" Language="C#" MasterPageFile="~/GreenLiving.Master" AutoEventWireup="true" CodeBehind="UserPage.aspx.cs" Inherits="Team_Compostable.Pages.UserPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<%--Actual user settings and content--%>
<asp:Content ID="mainUserContent" ContentPlaceHolderID="mainUserContent" runat="server">
    <div class="userMainBOX">
        <div class="userSettings">
            <a href="#Link1">Link1</a><br />
            <a href="#Link2">Link2</a><br />
            <a href="#Link3">Link3</a><br />
            <a href="#Link4">Link4</a><br />
            <a href="#Link5">Link5</a><br />
        </div>

        <div class="userContent">
            <div id="Link1">
                test 1
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