<%@ Page Title="Create a new Photo Album" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="NewPhotoAlbum.aspx.cs" Inherits=" _NewPhotoAlbum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:DetailsView Id="DetailsView1" AutoGenerateRows="false" DefaultMode="Insert" runat="server" Height="50px" Width="125px" InsertMethod="DetailsView1_InsertItem">
        <Fields>
            <asp:BoundField DataField="Name" HeaderText="Name" />
            <asp:CommandField ShowInsertButton="true" ShowCancelButton="false" />
        </Fields>
    </asp:DetailsView>
</asp:Content>

