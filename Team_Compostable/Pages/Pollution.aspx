<%@ Page Title="" Language="C#" MasterPageFile="~/GreenLiving.Master" AutoEventWireup="true" CodeBehind="Pollution.aspx.cs" Inherits="Team_Compostable.Pages.Pollution" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainPollutionContent" ContentPlaceHolderID="mainPollutionContent" runat="server">
    <div class="mainPollution BGimg">
        <div class="mainContainer">
            <div class="animated transBOX" id="pollutionHead">
                <h1><span class="span1">Pollution</span></h1>
                <h1>Carbon Dioxide,
                    <br />
                    Haze, Ozone, and More</h1>
            </div>
        </div>
    </div>

    <div class="basicStyle2">
        <h1 class="colh1">How is Pollution affecting our planet?</h1>
        <div id="pollution1" class="animated myCol2 pollutionSmall">
            <div>
                GRAPH1
            </div>
        </div>

        <div id="pollution2" class="animated myCol2 pollutionWide">
            <div>
              INFO1
            </div>
        </div>

        <div id="pollution3" class="animated myCol2 pollutionSmall">
            <div>
                GRAPH2
            </div>
        </div>

        <div id="pollution4" class="animated myCol2 pollutionWide">
            <div>
              INFO2
            </div>
        </div>

        <div id="pollution5" class="animated myCol2 pollutionSmall">
            <div>
                GRAPH3
            </div>
        </div>

        <div id="pollution6" class="animated myCol2 pollutionWide">
            <div>
              INFO3
            </div>
        </div>


    </div>


</asp:Content>

