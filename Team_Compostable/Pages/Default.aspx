<%@ Page Title="" Language="C#" MasterPageFile="~/GreenLiving.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Team_Compostable.Default" %>
<%@ Register Src="~/Controls/Languages.ascx" TagPrefix="ucLan" TagName="Languages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainHomeContent" ContentPlaceHolderID="mainHomeContent" runat="server">
    <div  class="mainHome BGimg">

        <div id="mainHome" class="mainContainer">
            <div class="animated transBOX" id="homeHead">
                <h1>Mission Compostable!<br />
                    <br />
                    Everything you need to know<br />
                    about <span class="span1">Green Living</span></h1>
                <i class="fa fa-angle-double-down midArrow"></i>
            </div>
    </div>
    </div>

</asp:Content>


<asp:Content ID="missionContent" ContentPlaceHolderID="missionContent" runat="server">
    <div id="mission" class="animated">

        <div class="mission">
            <h1 class="colh1">What is Green Living? </h1>
            <div class="myCol3">
                <h1><i class="fa fa-share-alt"></i></h1>
                Our mission is to provide a better way to inform people about Green Living
            </div>
             <div class="myCol3">
                <h1><i class="fa fa-desktop"></i></h1>
                 Know your carbon footprint, earn points, and compete with friends.
                You can find events and workshops around you to make yourself a little more environmentally friendly
            </div>
            <div class="myCol3">
                <h1><i class="fa fa-users"></i></h1>
               Know ways you can prevent pollution, learn the consequences and how you stack up against everyone else
            </div>
        </div>

    </div>
   
    <%--WRAPPPPPPP1--%>
    
    <%--<div class="middleBreak">
                    <h1 class="colh1"> TESTTESTTEST </h1>
    </div>--%>
    <div class="mission">
        <h1 class="colh1">What We Do?</h1>
        <div id="mission2" class="animated myCol2">
            <div >
                <img class="circle" src="../App_Themes/GreenTheme/Images/volc-min.JPEG" />
            </div>
        </div>

        <div id="mission3" class="animated myCol2">
            <div>
                 Mission Compostable is a nonprofit group of individuals dedicated to utilizing modern web development skills,
                 in order to design and develop a functional web page for those seeking to live a greener lifestyle.
                 Our website will be able to be used for a multitude of tasks to promote green living.
            </div>
        </div>
    </div>
   <%-- END WRAPPPPPP1--%>

        <%--WRAPPPPPPP2--%>
    
    <div class="mission">
        <h1 class="colh1">How We Do It?</h1>
        <div id="mission4" class="animated myCol2">
            <div>
                Greenhouse gases have been one of the most talked about issues in the 2000’s.
                 Data, solutions and other information regarding them are wide and plentiful.
                 We gather and collect data from various sources and determine ways that allow users to undergo greener living while still being able to maintain a comfortable lifestyle.
            </div>
        </div>

        <div id="mission5" class="animated myCol2">
            <div>
                 IMG
            </div>
        </div>
    </div>
   <%-- END WRAPPPPPP2--%>

        <%--WRAPPPPPPP3--%>
    
    <div class="mission">
        <h1 class="colh1">What Value do We Bring?</h1>
        <div id="mission6" class="animated myCol2">
            <div>
            IMG
            </div>
        </div>

        <div id="mission7" class="animated myCol2">
            <div>
                  Our primary concern is for the environment. Without a sustainable and clean environment, 
                there may negative consequences to human health, energy supply, the ecosystem, etc.
                In the long run this could affect future generations as well. 
                Mission Compostable seeks to make people aware to this issue and encourages the people of today to leave less of a carbon footprint for the sake of the environment and future generations who live in it.   
            </div>
        </div>
    </div>
   <%-- END WRAPPPPPP3--%>
    <br /><br />
    <br /><br />
    <br /><br />
    <br /><br />
</asp:Content>
