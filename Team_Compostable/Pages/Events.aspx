<%@ Page Title="" Language="C#" MasterPageFile="~/GreenLiving.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="Team_Compostable.Pages.Events" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainEventContent" ContentPlaceHolderID="mainEventContent" runat="server">
    <div class="container-fluid mainEvent BGimg">
        <div class="mainContainer">
            <div class="animated transBOX" id="eventsHead">
            <h1><span class="span1">Events</span></h1>
            <h1>Learn more about Green Living<br /> from practices and workshops</h1>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="TestContent" ContentPlaceHolderID="TestContent" runat="server">
    <div id="events" class="animated">

        <div class="basicStyle1">
            <h1 class="colh1">Find Green Living Events </h1>
            <div class="animated" id="calendar"><h1><i class="fa fa-calendar colh1 animated"></i></h1></div>
            <div class="myCol3">
                Gain knowledge about Green Living and find ways to better our planet
            </div>
            <div class="myCol3">
                Meet the pioneers and leaders who promote living green. Learn more about different topics.
                Help keep our planet clean
            </div>
            <div class="myCol3">
                Become and expert when it comes to Green Living. Show of your badges and while teaching others.
            </div>
        </div>
    </div>
<%--<asp:Content ID="CalendarContent" ContentPlaceHolderID="CalendarContent" runat="server">
    <div class="calendar">
        <asp:Calendar runat="server" BackColor="Blue" BorderColor="Black" BorderWidth="4px" DayHeaderStyle-BackColor="Green" Width="50%" Height="300px"
            DayHeaderStyle-BorderStyle="Ridge" DayHeaderStyle-Font-Bold="true" DayHeaderStyle-HorizontalAlign="Center" DayStyle-BackColor="WhiteSmoke" DayStyle-Font-Underline="false" 
            NextMonthText=">" PrevMonthText="<" SelectedDayStyle-BackColor="Red" DayHeaderStyle-Font-Underline="false" SelectedDayStyle-Font-Underline="false" TitleStyle-Font-Underline="false" Font-Underline="false" />
        </div>
</asp:Content>--%>


<%--<div class="animated" id="events">
    <div class="animated eventsLeft" id="eventsLeftID">
        bull

    </div>

    <div class="animated eventsRight" id="eventsRightID">
       shit

    </div>
</div>--%>
    <div class="basicStyle2">
    <asp:DataList CssClass="events1" RepeatLayout="Table"
    RepeatColumns="1"
    CellPadding="20"
    RepeatDirection="Horizontal"
    ItemStyle-BorderStyle="Solid"
    ItemStyle-CssClass="itemCSS"
      
    
        headerstyle-horizontalalign="center"
    runat="server" ID="pCatalog">
    <HeaderTemplate>Upcoming Events</HeaderTemplate>
	<ItemTemplate>
<%#((System.Data.DataRowView)Container.DataItem)["name"]%><br />
<%#((System.Data.DataRowView)Container.DataItem)["website"]%><br />
<%#((System.Data.DataRowView)Container.DataItem)["date"]%><br />
<%#((System.Data.DataRowView)Container.DataItem)["description"]%><br />
	</ItemTemplate>
    <FooterTemplate></FooterTemplate>
</asp:DataList>
</div>


</asp:Content>


