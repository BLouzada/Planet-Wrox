<%@ Page Title="Basics Selector jQuery" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="BasicSelector.aspx.cs" Inherits=" Demos_BasicSelector" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
     <h1>Basic Selector</h1>
    <div class="SampleClass">I am a div.</div>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="cpClientScript">
    <script>
        $(function(){
            $('*').css('color', 'Green');
            $('#Sidebar').css('border-bottom', '10px solid red');
            $('h1').bind('click', function(){alert('hello World')});
            $('.SampleClass').addClass('PleaseWait').hide(5000);
            $('footer, header').slideUp('slow').slideDown('slow');
            $('#Sidebar img').fadeTo(5000, 0.1);
        });
    </script>
</asp:Content>


