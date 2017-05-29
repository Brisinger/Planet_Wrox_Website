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
    <input id="SayHelloPageMethod" type="button" value="Say Hello with a Page Method" />
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
        function HelloWorldPageMethod(result)
        {
            var name = $get('Name').value;
            PageMethods.HelloWorld(name, HelloWorldCallBack);
        }
        $addHandler($get('SayHello'), 'click', HelloWorld);
        $addHandler($get('SayHelloPageMethod'), 'click', HelloWorldPageMethod);
  </script>
</asp:Content>

