<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ContactForm.ascx.cs" Inherits="Controls_ContactForm" %>

<script>
    function validatePhoneNumber(sorce, args) {
        var phoneHome = document.getElementById('<%= PhoneHome.ClientID %>');
        var phoneBuisness = document.getElementById('<%= PhoneBuisness.ClientID %>');
        if (phoneBuisness.value != '' || phoneHome.value != '') {
            args.IsValid = true;
        }
        else {
            args.IsValid = false;
        }
    }

    
</script>
<table class="auto-style1">
    <tr>
        <td colspan="3"><h1>Contact Form</h1>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">Name </td>
        <td class="auto-style2">
            <asp:TextBox ID="Name" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter a name" ControlToValidate="Name" CssClass="ErrorMessage">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Email Addres</td>
        <td class="auto-style2">
            <asp:TextBox ID="EmailAddres" runat="server" TextMode="Email"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter an Email Addres" ControlToValidate="EmailAddres" Display="Dynamic" CssClass="ErrorMessage">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter a valid email addres" ControlToValidate="EmailAddres" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" CssClass="ErrorMessage">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Confirm Email Adres</td>
        <td class="auto-style2"><asp:TextBox ID="ConfirmEmailAddres" runat="server" TextMode="Email"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Confirm email addres" ControlToValidate="ConfirmEmailAddres" Display="Dynamic" CssClass="ErrorMessage">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="EmailAddres" ControlToValidate="ConfirmEmailAddres" Display="Dynamic" ErrorMessage="Emails Addres dont match" CssClass="ErrorMessage">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Home Phone Number</td>
        <td class="auto-style2"><asp:TextBox ID="PhoneHome" runat="server" TextMode="Phone"></asp:TextBox>
            
            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Enter yourhome or business phone number" ClientValidationFunction="validatePhoneNumbers" OnServerValidate="CustomValidator1_ServerValidate" Display="Dynamic">*</asp:CustomValidator>
        </td>
        
        <td><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter a valida phone hom number" CssClass="ErrorMessage" Display="Dynamic" ControlToValidate="PhoneHome" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">*</asp:RegularExpressionValidator></td>
    </tr>
    <tr>
        <td class="auto-style3">Buisness Phone Number</td>
        <td class="auto-style2"><asp:TextBox ID="PhoneBuisness" runat="server" TextMode="Phone"></asp:TextBox></td>
        <td>&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter a valida phone buisness number" CssClass="ErrorMessage" Display="Dynamic" ControlToValidate="PhoneBuisness"  ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">*</asp:RegularExpressionValidator></td>
    </tr>
    <tr>
        <td class="auto-style3">Comment</td>
        <td class="auto-style2"><asp:TextBox ID="Comment" runat="server" TextMode="MultiLine" ></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" CssClass="ErrorMessage" Display="Dynamic" ControlToValidate="Comment">*</asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style2">
            <asp:Button ID="SendButton" runat="server" Text="Send" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3" colspan="3">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </td>
    </tr>
</table>

