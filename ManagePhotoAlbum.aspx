<%@ Page Title="ManagePhotoAlbum" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="ManagePhotoAlbum.aspx.cs" Inherits=" _ManagePhotoAlbum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" InsertItemPosition="LastItem" SelectMethod="ListView1_GetData" InsertMethod="ListView1_InsertItem" DeleteMethod="ListView1_DeleteItem" ItemType="Picture">
            <InsertItemTemplate>
                <li>
                    Description: <asp:TextBox Id="Description" runat="server" TextMode="MultiLine" text='<%# BindItem.Description %>' /><br />
                    <asp:RequiredFieldValidator ID="ReqDesc" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="Description"></asp:RequiredFieldValidator>
                    ToolTip: <asp:TextBox ID="ToolTip" runat="server" Text='<%# BindItem.ToolTip  %>' /> <br />
                    <asp:RequiredFieldValidator ID="ReqToolTip" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="ToolTip"></asp:RequiredFieldValidator>
                    <asp:FileUpload Id="FileUpload1" runat="server" /> <br />
                    <asp:CustomValidator ID="cusValImage" runat="server" ErrorMessage="Insert a valid .jpg file" ControlToValidate="FileUpload1"></asp:CustomValidator>
                    <asp:Button ID="InsertButton" runat="server" Text="Insert" CommandName="Insert" />
                </li>
            </InsertItemTemplate>
            <ItemTemplate>
                <li>
                    Description: <asp:Label ID="lblDescription" runat="server" Text='<%# Item.Description %>' /><br />
                    ToolTip: <asp:Label ID="lblToolTip" runat="server" Text='<%# Item.ToolTip %>' /><br />
                     <asp:Image ID="imgImageUrl" runat="server" ImageUrl='<%# Item.ImageUrl %>' /><br />
                     <asp:Button ID="DeleteButton" runat="server" Text="Delete" CommandName="Delete" CausesValidation="false"/>
                </li>
            </ItemTemplate>
            <LayoutTemplate>
                <ul class="ItemContainer">
                    <li id="itemPlaceHolder" runat="server"/>
                </ul>
            </LayoutTemplate>
    </asp:ListView>
</asp:Content>

