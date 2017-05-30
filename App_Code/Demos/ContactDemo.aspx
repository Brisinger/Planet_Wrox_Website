<%-- Asp.Net request validation mechanism is triggered for this page and for any other page ignoring 
  the request validation setting of this page or any other page in the @Page directive and also
  in the <pages> element in the configuration file (if any), as the validation approach specified
  in version 4.0 is used by default by the Asp.Net runtine. To enable request validation for only pages and not any other
  http requests we can change the validation version used by Asp.net runtime to 2.0, using the RequestValidationMode property.
  The request validation settings of the pages element (if any) in the configuration file or of the @ Page directive in an individual page are used to determine which page requests to validate.
  The httpruntime provides the attribute RequestValidationMode which takes any of these two values 4.0 or 2.0 to specify which approch the Asp.net runtime will determine, in order to validate http requests.--%>

<%@ Page Title="Contact Demo" ValidateRequest="false" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="ContactDemo.aspx.cs" Inherits="Demos_ContactDemo" %>

<%@ Register Src="../Controls/ContactForm.ascx" TagName="ContactForm" TagPrefix="uc1" %>
<asp:Content ContentPlaceHolderID="head" ID="Content1" runat="server"></asp:Content>
<asp:Content ContentPlaceHolderID="cpMainContent" ID="Content2" runat="server">
  <uc1:ContactForm ID="ContactForm1" runat="server" />
</asp:Content>

