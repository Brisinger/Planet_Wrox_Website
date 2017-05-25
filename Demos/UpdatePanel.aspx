<%@ Page Title="UpdatePanel Demo" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="UpdatePanel.aspx.cs" Inherits="Demos_UpdatePanel" %>

<asp:Content ContentPlaceHolderID="head" ID="Content1" runat="server">
</asp:Content>
<asp:Content ContentPlaceHolderID="cpMainContent" ID="Content2" runat="server">
  <asp:ScriptManager ID="ScriptManager1" runat="server">
  </asp:ScriptManager>
  <asp:UpdatePanel runat="server" ID="UpdatePanel1">
    <ContentTemplate>
      <asp:Label ID="Label1" runat="server"></asp:Label>
      <asp:Button ID="Button1" runat="server" Text="Button" />
    </ContentTemplate>
  </asp:UpdatePanel>
</asp:Content>

