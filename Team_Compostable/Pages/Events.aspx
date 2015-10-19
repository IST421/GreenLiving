<%@ Page Title="" Language="C#" MasterPageFile="~/GreenLiving.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="Team_Compostable.Pages.Events" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="calendar">
        <asp:Calendar runat="server" BackColor="Blue" BorderColor="Black" BorderWidth="4px" DayHeaderStyle-BackColor="Green" Width="50%" Height="300px"
            DayHeaderStyle-BorderStyle="Ridge" DayHeaderStyle-Font-Bold="true" DayHeaderStyle-HorizontalAlign="Center" DayStyle-BackColor="WhiteSmoke" DayStyle-Font-Underline="false" 
            NextMonthText=">" PrevMonthText="<" SelectedDayStyle-BackColor="Red" DayHeaderStyle-Font-Underline="false" SelectedDayStyle-Font-Underline="false" TitleStyle-Font-Underline="false" Font-Underline="false" />
        </div>
</asp:Content>