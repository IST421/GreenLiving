<%@ Page Title="" Language="C#" MasterPageFile="~/GreenLiving.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Team_Compostable.Default" %>
<%@ Register Src="~/Controls/Languages.ascx" TagPrefix="ucLan" TagName="Languages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainHomeContent" ContentPlaceHolderID="mainHomeContent" runat="server">
    <div  class="mainHome BGimg">

        <div id="mainHome" class="mainContainer">
            <div class="animated transBOX" id="homeHead">
                <h1><asp:Label Text="<%$ resources:WebResources,hHMission %>" runat="server"/><br />
                    <br />
                    <asp:Label Text="<%$ resources:WebResources,hHEverything %>" runat="server"/><br />
                    <asp:Label Text="<%$ resources:WebResources,hHabout %>" runat="server"/> <span class="span1"><asp:Label Text="<%$ resources:WebResources,hHGreen %>" runat="server"/></span></h1>
            </div>
            <i class="fa fa-angle-double-down midArrow"></i>
    </div>
    </div>


</asp:Content>


<asp:Content ID="missionContent" ContentPlaceHolderID="missionContent" runat="server">
    <div id="mission" class="animated">

        <div class="basicStyle1">
            <h1 class="colh1"><asp:Label Text="<%$ resources:WebResources,homeWhat %>" runat="server"/></h1>
            <div class="myCol3">
                <h1><i class="fa fa-share-alt"></i></h1>
               <asp:Label Text="<%$ resources:WebResources,homeOur %>" runat="server"/>
            </div>
             <div class="myCol3">
                <h1><i class="fa fa-desktop"></i></h1>
                 <asp:Label Text="<%$ resources:WebResources,homeKnowY %>" runat="server"/>
            </div>
            <div class="myCol3">
                <h1><i class="fa fa-users"></i></h1>
                <asp:Label Text="<%$ resources:WebResources,homeKnowW %>" runat="server"/>
            </div>
        </div>

    </div>
   
    <%--WRAPPPPPPP1--%>
    
    <%--<div class="middleBreak">
                    <h1 class="colh1"> TESTTESTTEST </h1>
    </div>--%>
    <div class="basicStyle1">
        <h1 class="colh1"><asp:Label Text="<%$ resources:WebResources,missionDo %>" runat="server"/></h1>
        <div id="mission2" class="animated myCol2">
            <div class="bgGreen circle">
                
            </div>
        </div>

        <div id="mission3" class="animated myCol2">
            <div>
                 <asp:Label Text="<%$ resources:WebResources,mission3 %>" runat="server"/>
            </div>
            </div>
        </div>
   <%-- END WRAPPPPPP1--%>

        <%--WRAPPPPPPP2--%>
    
    <div class="basicStyle1">
        <h1 class="colh1"><asp:Label Text="<%$ resources:WebResources,missionHow %>" runat="server"/></h1>
        <div id="mission4" class="animated myCol2">
            <div>
                <asp:Label Text="<%$ resources:WebResources,mission4 %>" runat="server"/>
            </div>
        </div>

        <div id="mission5" class="animated myCol2">
            <div class="bgG circle">
                 
            </div>
        </div>
    </div>
   <%-- END WRAPPPPPP2--%>

        <%--WRAPPPPPPP3--%>
    
    <div class="basicStyle1">
        <h1 class="colh1"><asp:Label Text="<%$ resources:WebResources,missionWhat %>" runat="server"/></h1>
        <div id="mission6" class="animated myCol2">
            <div class="bgBee circle">
            
            </div>
        </div>

        <div id="mission7" class="animated myCol2">
            <div>
                <asp:Label Text="<%$ resources:WebResources,mission7 %>" runat="server"/>
            </div>
        </div>
    </div>
   <%-- END WRAPPPPPP3--%>
</asp:Content>
