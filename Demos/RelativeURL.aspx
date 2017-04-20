<%@ Page Title="Relative URL" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="RelativeURL.aspx.cs" Inherits="Demos_RelativeURL" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
    <asp:Image ID="Image1" runat="server" ImageUrl="App_Themes/Monochrome/Images/Header.jpg" />
    <asp:Image ID="Image2" runat="server" ImageUrl="/App_Themes/Monochrome/Images/Header.jpg" />
    <asp:Image ID="Image3" runat="server" ImageUrl="~/App_Themes/Monochrome/Images/Header.jpg" />
</asp:Content>

