<%@ Page Title="Add and Edit Review" Language="C#" MasterPageFile="~/MasterPages/Management.master" AutoEventWireup="true" CodeFile="AddEditReviewHandCoded.aspx.cs" Inherits="Management_AddEditReviewHandCoded" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="auto-style1">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Title"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TitleText" runat="server" Width="450px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="SummaryLabel" runat="server" Text="Summary"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="SummaryText" runat="server" TextMode="MultiLine" Width="450px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Body"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBody" runat="server" TextMode="MultiLine" Width="450px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Genre"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="GenreList" runat="server" DataTextField="Name" DataValueField="Id" SelectMethod="GenreList_GetData">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Authorized"></asp:Label>
            </td>
            <td>
                <asp:CheckBox ID="Authorized" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="SaveButton" runat="server" OnClick="SaveButton_Click" Text="Save" />
            </td>
        </tr>
    </table>

</asp:Content>

