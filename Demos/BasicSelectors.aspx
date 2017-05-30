<%@ Page Title="Basic Selectors Demo" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="BasicSelectors.aspx.cs" Inherits="Demos_BasicSelector" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
    <h1>Basic Selectors</h1>
    <div class="SampleClass">I am a div.</div>
</asp:Content>

<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="cpClientScript">
    <script type="text/javascript">
        $(function ()
        {
            $('*').css('color', 'green');                               //universal selector
            $('#Footer').css('border-bottom', '2px solid black');       //ID selector
            $('h1').bind('click', function () { alert('Hello World') });//Element selector
            $('.SampleClass').addClass('PleaseWait').hide(5000);        //Class selector
            $('#Footer, #Header').slideUp('slow').slideDown('slow');     //Grouped selector
            $('#Sidebar img').fadeTo(5000, 0.1);                        //Combined selector
        });
    </script>
</asp:Content>


