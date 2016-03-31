<%@ Page Title="Skins Demo" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="SkinsDemo.aspx.cs" Inherits=" Demos_SkinsDemo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:Button ID="Button1" runat="server" Text="Button" />
    <asp:Button ID="button2" runat="server" Text="button2" SkinID="redButton" />
</asp:Content>

