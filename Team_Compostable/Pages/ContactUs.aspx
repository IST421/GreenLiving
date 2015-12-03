<%@ Page Title="" Language="C#" MasterPageFile="~/GreenLiving.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Team_Compostable.Pages.ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="mainContactContent" ContentPlaceHolderID="mainContactContent" runat="server">
    <div class="mainContact BGimg">
        <div class="mainContainer">
            <div class=" transBOX">
                <h1><span class="span1">Contact US</span></h1>
                <h1>Questions? Concerns?
                    <br />
                    Contact us below</h1>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="contactContent" ContentPlaceHolderID="contactContent" runat="server">

    <div class="basicStyle1" id="contactUs">
        <br />
        <br />
        <%--      <asp:Label ID="lblmsg" 
            Text= "Contact Us!" 
            runat="server" />--%>
        <asp:Panel ID="PersonalDetails" runat="server"
            GroupingText="Contact form" CssClass="panels" >
            <table style="padding:30px;">
                <!-- Name -->

                <tr>
                    <td>Email:
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail"
                            runat="server"
                            Columns="50">
                        </asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="txtEmailReqValidator"
                            runat="server"
                            ControlToValidate="txtMessage"
                            ValidationExpression=".*@.*\..*"
                            ErrorMessage="*Your entry is not a valid e-mail address."
                            Display="dynamic"
                            ForeColor="Red"> 
                        </asp:RequiredFieldValidator>

                    </td>
                </tr>

                <!-- Subject -->
                <tr>
                    <td>Subject:
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlSubject" runat="server">
                            <asp:ListItem>Ask a question</asp:ListItem>
                            <asp:ListItem>Report a bug</asp:ListItem>
                            <asp:ListItem>Customer support ticket</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>

                <!-- Message -->
                <tr>
                    <td>Message:
                    </td>
                    <td>
                        <asp:TextBox ID="txtMessage"
                            runat="server"
                            Columns="40"
                            Rows="6"
                            TextMode="MultiLine">
                        </asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="txtMessageReqValidator"
                            runat="server"
                            ControlToValidate="txtMessage"
                            ErrorMessage="*Please Describe Your Problem."
                            ForeColor="Red"> 
                        </asp:RequiredFieldValidator>

                    </td>
                </tr>

                <!-- Submit -->
                <tr>
                    <td></td>
                    <td colspan="2">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit"
                            OnClick="btnSubmit_Click" />
                    </td>
                </tr>

                <!-- Results -->
                <tr>
                    <td></td>
                    <td colspan="2">
                        <asp:Label ID="lblResult" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </div>
</asp:Content>
