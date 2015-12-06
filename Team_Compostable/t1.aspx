<%@ Page Title="" Language="C#" MasterPageFile="~/GreenLiving.Master" AutoEventWireup="true" CodeBehind="t1.aspx.cs" Inherits="Team_Compostable.t1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainHomeContent" runat="server">
    <%--<asp:Label id="yo" runat="server"></asp:Label>--%>
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:TextBox ID="fname" runat="server"/>
    <asp:TextBox ID="lname" runat="server" />
    <br />
    <br />
    <asp:Button ID="Submitter" Text="submit" OnClick="Submitter_Click" runat="server" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>