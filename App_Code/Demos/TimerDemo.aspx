<%@ Page Title="Planet Wrox" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="TimerDemo.aspx.cs" Inherits="Demos_TimerDemo" %>

<asp:Content ContentPlaceHolderID="head" ID="Content1" runat="server"></asp:Content>
<asp:Content ContentPlaceHolderID="cpMainContent" ID="Content2" runat="server">
  <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
      <asp:Label ID="Label1" runat="server"></asp:Label>
      <asp:Timer ID="Timer1" runat="server" Interval="5000" OnTick="Timer1_Tick">
      </asp:Timer>
    </ContentTemplate>
    <Triggers>
      <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
    </Triggers>
  </asp:UpdatePanel>
</asp:Content>

