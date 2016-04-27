<%@ Page Title="All Photo Albums" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits=" PhotoAlbums_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <asp:DropDownList ID="PhotoAlbumList" runat="server" AutoPostBack="True" DataTextField="Name" DataValueField="Id" OnSelectedIndexChanged="PhotoAlbumList_SelectedIndexChanged" SelectMethod="PhotoAlbumList_GetData">
    </asp:DropDownList>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" ItemType="Picture" SelectMethod="ListView1_GetData">
        <EmptyDataTemplate>
            No Pictures found for this photo Album
        </EmptyDataTemplate>
        <ItemTemplate>
            <li>
                <asp:Image Id="Image1" runat="server" ImageUrl='<%# Item.ImageUrl %>' ToolTip='<%# Item.ToolTip %>' />
                <asp:Label ID="Description" runat="server" Text='<%# Item.Description %>'/>
            </li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul class="ItemContainer">
                <li id="itemPlaceHolder" runat="server"/>
            </ul>
            <div style="clear:both">
                <asp:DataPager ID="DataPager1" runat="server" PageSize="3"> 
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="true" ShowLastPageButton="true"/>
                    </Fields>

                </asp:DataPager>
            </div>
        </LayoutTemplate>
    </asp:ListView>
    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

