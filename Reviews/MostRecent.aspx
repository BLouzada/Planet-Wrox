<%@ Page Title="Most Recent Reviews" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="MostRecent.aspx.cs" Inherits=" Reviews_MostRecebt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
   <ol>
       <asp:Repeater ID="Repeater1" runat="server">
       <ItemTemplate>
            <li>
                Genre: <asp:Literal ID="Literal1" runat="server" Text='<%# Eval ("Name") %>'></asp:Literal><br />
                Title: <asp:Literal ID="BulletedList1" runat="server" Text='<%# Eval ("Title") %>'></asp:Literal>      

            </li>
            <br />
       </ItemTemplate>
     </asp:Repeater>
   </ol> 
</asp:Content>

