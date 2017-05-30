<%@ Page Title="Jquery Demo" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Jquery.aspx.cs" Inherits="Demos_Jquery" %>

<asp:Content ContentPlaceHolderID="head" ID="Content1" runat="server"></asp:Content>
<asp:Content ContentPlaceHolderID="cpMainContent" ID="Content2" runat="server">
  <input id="Button1" type="button" value="button" />
  <script type="text/javascript">
    $(document).ready(function ()
    {
      $('#MainContent').css('backgroud-color', 'green')
      $('#Button1').click(function ()
      {
        $('MainContent').css('background-color', 'red').animate({ width: '100px', height: '800px' });
      });
    });
  </script>
</asp:Content>

