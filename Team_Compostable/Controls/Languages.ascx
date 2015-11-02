﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Languages.ascx.cs" Inherits="Team_Compostable.Controls.WebUserControl1" %>
<asp:Label ID="labelLan" Text="<%$ Resources:WebResources, LabelLanguage %>" runat="server"></asp:Label>

<asp:ImageButton ID="EnglishFlag" ImageUrl="~/Images/f1.png" AlternateText="english" runat="server" Height="25" Width="30" OnClick="EnglishFlag_Click" />

<asp:ImageButton ID="SpanishFlag" ImageUrl="~/Images/f2.png" AlternateText="espanol" runat="server" Height="25" Width="30" OnClick="SpanishFlag_Click" />

<asp:ImageButton ID="GermanFlag" ImageUrl="~/Images/f3.png" AlternateText="deutsch" runat="server" Height="25" Width="30" OnClick="GermanFlag_Click" />