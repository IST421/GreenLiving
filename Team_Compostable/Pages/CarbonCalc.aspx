<%@ Page Title="" Language="C#" MasterPageFile="~/GreenLiving.Master" AutoEventWireup="true" CodeBehind="CarbonCalc.aspx.cs" Inherits="Team_Compostable.Pages.CarbonCalc" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, 
   PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainCalcContent" ContentPlaceHolderID="mainCalcContent" runat="server">
    <div class="mainCalc BGimg">
        <div class="mainContainer">
            <div class="animated transBOX" id="calcHead">
                <h1><span class="span1">Carbon Calculator</span></h1>
                <h1>Calculate your impact
                    <br />
                    you have on this earth</h1>

            </div>
        </div>
    </div>

    <div id="mission" class="animated">
        <div class="carbonCalcForm">
            <div class="basicStyle1">
                <h1 class="colh1">Calculate your Carbon footprint</h1>
                <div class="myCol3">

                    <asp:Panel runat="server" ID="utiliitesForm" Style="clear: both"
                        GroupingText="Utilities" CssClass="calcPanels">
                        <asp:Table runat="server">

                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:Label Text="Electricity:" runat="server"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="txtElectricity" placeholder="kilowatt hours / year" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="valElectricity" runat="server" ControlToValidate="txtElectricity" ErrorMessage="* You must enter a value" Display="dynamic" />
                                    <asp:CompareValidator ID="valElectricityInt" runat="server" ControlToValidate="txtElectricity" Operator="DataTypeCheck" Type="Integer" ErrorMessage="* Please enter the nearest whole number"></asp:CompareValidator>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell runat="server">
                                    <asp:Label Text="Natural Gas:" runat="server"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="txtNaturalGas" placeholder="therms / year" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="valNaturalGas" runat="server" ControlToValidate="txtNaturalGas" ErrorMessage="* You must enter a value" Display="dynamic" />
                                    <asp:CompareValidator ID="valNaturalGasInt" runat="server" ControlToValidate="txtNaturalGas" Operator="DataTypeCheck" Type="Integer" ErrorMessage="* Please enter the nearest whole number"></asp:CompareValidator>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell runat="server">
                                    <asp:Label Text="Fuel Oil:" runat="server"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="txtFuelOil" placeholder="gallons / year" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="valFuelOil" runat="server" ControlToValidate="txtFuelOil" ErrorMessage="* You must enter a value" Display="dynamic" />
                                    <asp:CompareValidator ID="valFuelOilInt" runat="server" ControlToValidate="txtFuelOil" Operator="DataTypeCheck" Type="Integer" ErrorMessage="* Please enter the nearest whole number"></asp:CompareValidator>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell runat="server">
                                    <asp:Label Text="Propane:" runat="server"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="txtLPG" placeholder="gallons / year" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="valLPG" runat="server" ControlToValidate="txtLPG" ErrorMessage="* You must enter a value" Display="dynamic" />
                                    <asp:CompareValidator ID="valLPGInt" runat="server" ControlToValidate="txtLPG" Operator="DataTypeCheck" Type="Integer" ErrorMessage="* Please enter the nearest whole number"></asp:CompareValidator>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell runat="server">
                                    <asp:Label Text="Waste:  " runat="server"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="txtWaste" placeholder="pounds / year" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="valWaste" runat="server" ControlToValidate="txtWaste" ErrorMessage="* You must enter a value" Display="dynamic" />
                                    <asp:CompareValidator ID="valWasteInt" runat="server" ControlToValidate="txtWaste" Operator="DataTypeCheck" Type="Integer" ErrorMessage="* Please enter the nearest whole number"></asp:CompareValidator>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </asp:Panel>
                </div>

                <div class="myCol3">

                    <asp:Panel runat="server" ID="travelForm" Style="clear: both"
                        GroupingText="Transportation" CssClass="calcPanels">
                        <asp:Table runat="server">

                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:Label runat="server" Text="Car: "></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="txtCar" placeholder="miles traveled / year" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="valCar" runat="server" ControlToValidate="txtCar" ErrorMessage="* You must enter a value" Display="dynamic" />
                                    <asp:CompareValidator ID="valCarInt" runat="server" ControlToValidate="txtCar" Operator="DataTypeCheck" Type="Integer" ErrorMessage="* Please enter the nearest whole number"></asp:CompareValidator>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:Label runat="server" Text="Van: "></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="txtVan" placeholder="miles traveled / year" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="valVan" runat="server" ControlToValidate="txtVan" ErrorMessage="* You must enter a value" Display="dynamic" />
                                    <asp:CompareValidator ID="valVanInt" runat="server" ControlToValidate="txtVan" Operator="DataTypeCheck" Type="Integer" ErrorMessage="* Please enter the nearest whole number"></asp:CompareValidator>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:Label runat="server" Text="Truck: "></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="txtTruck" placeholder="miles traveled / year" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="valTruck" runat="server" ControlToValidate="txtTruck" ErrorMessage="* You must enter a value" Display="dynamic" />
                                    <asp:CompareValidator ID="valTruckInt" runat="server" ControlToValidate="txtTruck" Operator="DataTypeCheck" Type="Integer" ErrorMessage="* Please enter the nearest whole number"></asp:CompareValidator>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:Label runat="server" Text="Bus: "></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="txtBus" placeholder="miles traveled / year" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="valBus" runat="server" ControlToValidate="txtBus" ErrorMessage="* You must enter a value" Display="dynamic" />
                                    <asp:CompareValidator ID="valBusInt" runat="server" ControlToValidate="txtBus" Operator="DataTypeCheck" Type="Integer" ErrorMessage="* Please enter the nearest whole number"></asp:CompareValidator>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:Label runat="server" Text="Taxi: "></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="txtTaxi" placeholder="miles traveled / year" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="valTaxi" runat="server" ControlToValidate="txtTaxi" ErrorMessage="* You must enter a value" Display="dynamic" />
                                    <asp:CompareValidator ID="valTaxiInt" runat="server" ControlToValidate="txtTaxi" Operator="DataTypeCheck" Type="Integer" ErrorMessage="* Please enter the nearest whole number"></asp:CompareValidator>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:Label runat="server" Text="Train: "></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="txtTrain" placeholder="miles traveled / year" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="valTrain" runat="server" ControlToValidate="txtTrain" ErrorMessage="* You must enter a value" Display="dynamic" />
                                    <asp:CompareValidator ID="valTrainInt" runat="server" ControlToValidate="txtTrain" Operator="DataTypeCheck" Type="Integer" ErrorMessage="* Please enter the nearest whole number"></asp:CompareValidator>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:Label runat="server" Text="Plane: "></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox ID="txtPlane" placeholder="miles traveled / year" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="valPlane" runat="server" ControlToValidate="txtPlane" ErrorMessage="* You must enter a value" Display="dynamic" />
                                    <asp:CompareValidator ID="valPlaneInt" runat="server" ControlToValidate="txtPlane" Operator="DataTypeCheck" Type="Integer" ErrorMessage="* Please enter the nearest whole number"></asp:CompareValidator>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </asp:Panel>
                </div>
                <div class="myCol3">


                    <asp:Panel runat="server" ID="totals" Style="clear: both"
                        GroupingText="Totals" CssClass="calcPanels">
                        <asp:Table runat="server">

                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:Label runat="server">Utilities Score:  </asp:Label>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox runat="server" ID="txtUtilitiesScore" ReadOnly="true" placeholder="Your Utilities CFP"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:Label runat="server">Transportation Score:  </asp:Label>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox runat="server" ID="txtTransScore" ReadOnly="true" placeholder="Your Transportation CFP"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">
                                    <asp:Label runat="server">Total Score:  </asp:Label>
                                </asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox runat="server" ID="txtTotal" ReadOnly="true" placeholder="Your Total CFP"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                        <asp:Button ID="Submit" class="buttonSUBMIT" Text="Submit" runat="server" OnClick="Submit_Click" />

                    </asp:Panel>
                </div>
            </div>

        </div>
    </div>


   <div id="calc" class="animated">
        <div class="basicStyle1">
            <div class="myCol1">
                  123123123

            </div>           
        </div>
    </div>
        


    <div class="calcStyle2">
        <h1 class="colh1">So what does this mean?</h1>
        <asp:Chart ID="Chart4" Width="550px" Height="400px" BorderStyle="solid" runat="server">
            <Titles>
                <asp:Title Text="Average CO2 emissions yearly per person" Font="Relaway, 14" />
            </Titles>
            <Series>
                <asp:Series ChartType="Column" Name="Emissions"></asp:Series>

            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                    <AxisX Interval="2" Title="COUNTRY" TitleFont="Relaway, 14" />
                    <AxisY Interval="auto" Title="CO2(TONS)" TitleFont="Relaway, 14" />
                </asp:ChartArea>
            </ChartAreas>
        </asp:Chart>

        <div id="mission4" class="animated myCol2">
            <div>
                 
            </div>
            </div>

    </div>


</asp:Content>





