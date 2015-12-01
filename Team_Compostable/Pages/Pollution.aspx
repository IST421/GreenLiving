<%@ Page Title="" Language="C#" MasterPageFile="~/GreenLiving.Master" AutoEventWireup="true" CodeBehind="Pollution.aspx.cs" Inherits="Team_Compostable.Pages.Pollution" %>
<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, 
   PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

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
        <div id="pollution1" class="animated myCol2 pollutionWide">
            <div>


                <asp:Chart ID="Chart1" runat="server" Width="550px" Height="400px" BorderStyle="solid"
                    BackColor="LightGreen" DataSourceID="XmlDataSource1">
                    <Titles>
                        <asp:Title Text="CARBON IN THE ATMOSPHERE THROUGH THE RECENT YEARS" Font="Relaway, 15" />
                    </Titles>
                    <Series>
                        <asp:Series font="20pt" Color="#7bc2ed" Name="Carbon Parts per Million" XValueType="DateTime" BorderWidth="10" ChartType="Line" YValuesPerPoint="4"></asp:Series>

                    </Series>
                    <ChartAreas>
                        <asp:ChartArea  Name="ChartArea2">
                            <AxisX Interval="Auto" IntervalOffset="Auto" Title="YEAR" TitleFont="Relaway, 15"/>
                            <AxisY Interval="auto" IsStartedFromZero="false"  Title="CO2 (parts per million)" TitleFont="Relaway, 15"/>
                        </asp:ChartArea>

                    </ChartAreas>
                </asp:Chart>



                <asp:XmlDataSource runat="server" ID="XmlDataSource1" DataFile="~/App_Data/XMLFile2.xml"></asp:XmlDataSource>
            </div>
        </div>

        <div id="pollution2" class="animated myCol2 pollutionSmall">
            <div>
              INFO1
            </div>
        </div>

        <div id="pollution3" class="animated myCol2 pollutionWide charts">
            <div>
                
                    <asp:Chart ID="Chart2" onload="Page_Load" runat="server" Width="550px" Height="400px" BorderStyle="solid"
                        BackColor="#80c0f0">
                        <Titles><asp:Title Text="ICE DECREASE THROUGH THE YEARS" Font="Relaway, 15"/></Titles>                      
                        <Series>
                            <asp:Series Color="#8ded99" BorderWidth="10" ChartType="SplineArea" Name="Ice level over the years" YValuesPerPoint="6">
                                <Points>
                                    
                                </Points>
                            </asp:Series>                            
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea IsSameFontSizeForAllAxes="true"  Name="ChartArea1">
                                <AxisX Interval="Auto"  Title="YEAR" TitleFont="Relaway, 15" />                          
                                <AxisY Interval="Auto" Title="MILLION SQUARE KM" TitleFont="Relaway, 15" />
                            </asp:ChartArea>                           
                        </ChartAreas>
                    </asp:Chart>

                
            </div>
        </div>

        <div id="pollution4" class="animated myCol2 pollutionSmall">
            <div>
              INFO2
            </div>
        </div>

        <div id="pollution5" class="animated myCol2 pollutionWide">
            <div>
                GRAPH3
            </div>
        </div>

        <div id="pollution6" class="animated myCol2 pollutionSmall">
            <div>
              INFO3
            </div>
        </div>


    </div>


</asp:Content>

