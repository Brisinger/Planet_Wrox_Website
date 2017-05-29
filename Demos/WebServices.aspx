<%@ Page Title="Web Services Demo" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="WebServices.aspx.cs" Inherits="Demos_WebServices" %>

<asp:Content ContentPlaceHolderID="head" ID="Content1" runat="server"></asp:Content>
<asp:Content ContentPlaceHolderID="cpMainContent" ID="Content2" runat="server">
  <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
    <Services>
      <asp:ServiceReference Path="~/WebServices/NameService.asmx" />
    </Services>
  </asp:ScriptManagerProxy>
  <input id="Name" type="text" />
  <input id="SayHello" type="button" value="Say Hello" />
  <%-- Script to communicate with web service and work on the value returned 
   from the service --%>
  <script type="text/javascript" lang="en-us">
    function HelloWorld()
    {
      var name = $get('Name').value;
      NameService.HelloWorld(name, HelloWorldCallBack);
    }
    function HelloWorldCallBack(result)
    {
      alert(result);
    }
    $addHandler($get('SayHello'), 'click', HelloWorld);
  </script>
</asp:Content>

