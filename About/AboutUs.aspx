﻿<%@ Page Title="About Us" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits=" About_AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <p>
        My organization is muck, and i created this site to learn asp.net
    </p>
    <Wrox:Banner ID="Banner2"  runat="server" DisplayDirection="Horizontal"/>
    <asp:Button ID="Button1" runat="server" Text="Button" />
</asp:Content>

