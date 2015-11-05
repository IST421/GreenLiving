<%@ Page Title="" Language="C#" MasterPageFile="~/GreenLiving.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="Team_Compostable.Pages.Events" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainEventContent" ContentPlaceHolderID="mainEventContent" runat="server">
    <div class="mainEvent BGimg">
        <div class="mainContainer transBOX ">
            <h1>All of the  Green Living events <br /> are located below</h1>
            
        </div>
    </div>
</asp:Content>



<asp:Content ID="CalendarContent" ContentPlaceHolderID="CalendarContent" runat="server">
    <div class="calendar">
        <asp:Calendar runat="server" BackColor="Blue" BorderColor="Black" BorderWidth="4px" DayHeaderStyle-BackColor="Green" Width="50%" Height="300px"
            DayHeaderStyle-BorderStyle="Ridge" DayHeaderStyle-Font-Bold="true" DayHeaderStyle-HorizontalAlign="Center" DayStyle-BackColor="WhiteSmoke" DayStyle-Font-Underline="false" 
            NextMonthText=">" PrevMonthText="<" SelectedDayStyle-BackColor="Red" DayHeaderStyle-Font-Underline="false" SelectedDayStyle-Font-Underline="false" TitleStyle-Font-Underline="false" Font-Underline="false" />
        </div>
</asp:Content>

<asp:Content ID="TestContent" ContentPlaceHolderID="TestContent" runat="server">
<div class="events">
    <div class="eventsLeft">


    </div>

    <div class="eventsRight">


    </div>
</div>
</asp:Content>
