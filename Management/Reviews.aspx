<%@ Page Title="Planet Wrox-Management-Reviews" Language="C#" MasterPageFile="~/MasterPages/Management.master" AutoEventWireup="true" CodeFile="Reviews.aspx.cs" Inherits="Management_Reviews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
  <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Id">
    <asp:ListItem Value="">Make a selection</asp:ListItem>
  </asp:DropDownList>
  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PlanetWrox %>" SelectCommand="SELECT [Id], [Name] FROM [Genre] ORDER BY [SortOrder]"></asp:SqlDataSource>
</asp:Content>

