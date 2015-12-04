<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Languages.ascx.cs" Inherits="Team_Compostable.Controls.WebUserControl1" %>

<div class="languages">
    <%--<asp:Label ID="labelLan" Text="<%$ Resources:WebResources, LabelLanguage %>" runat="server"></asp:Label>--%>

    <asp:ImageButton title="English" ID="EnglishFlag" ImageUrl="~/Images/f1.png" AlternateText="english" runat="server" Height="15" Width="20" OnClick="EnglishFlag_Click" />

    <asp:ImageButton title="Spanish" ID="SpanishFlag" ImageUrl="~/Images/f3.png" AlternateText="espanol" runat="server" Height="15" Width="20" OnClick="SpanishFlag_Click" />

    <asp:ImageButton title="German" ID="GermanFlag" ImageUrl="~/Images/f2.png" AlternateText="deutsch" runat="server" Height="15" Width="20" OnClick="GermanFlag_Click" />

</div>
