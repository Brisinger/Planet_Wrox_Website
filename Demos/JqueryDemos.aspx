<%@ Page Title="Jquery Demo" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="JqueryDemos.aspx.cs" Inherits="Demos_JqueryDemos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
  <h1 title="First Header">First Header</h1>
  <table id="DemoTable">
    <tr>
      <td>Row 1 Cell 1</td>
      <td>Row 1 Cell 2</td>
    </tr>
    <tr>
      <td>Row 2 Cell 1</td>
      <td>Row 2 Cell 2</td>
    </tr>
    <tr>
      <td>Row 3 Cell 1</td>
      <td>Row 3 Cell 2</td>
    </tr>
    <tr>
      <td>Row 4 Cell 1</td>
      <td>Row 4 Cell 2</td>
    </tr>
    <tr>
      <td>Row 5 Cell 1</td>
      <td>Row 5 Cell 2</td>
    </tr>
  </table>
  <h2>Second <span style="font-style: italic; font-weight: bold;">Header</span></h2>
  <input id="Button1" type="button" value="button" />
  <input id="Checkbox1" type="checkbox" />
  <input id="Checkbox2" type="checkbox" />
</asp:Content>

<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="cpClientScript">
  <script type="text/javascript">
    $(function ()
    {
      $('#DemoTable').css('background-color', 'blue');
      $('#DemoTable tr:first').css('background-color', 'red');
      $('#DemoTable tr:last').css('background-color', 'red');
      //The index no. of the elements in the matched set start from zero
      //-by jquery selectors.
      $('#DemoTable tr:even').css('background-color', 'green');
      //Changes the color in the third row (with an index of two).
      $('#DemoTable tr:eq(2)').css('color', 'yellow');
      // Changes the last two rows (rows 1, 2 and 3,
      // with an index of 0, 1 and 2 respectively, are skipped.)
      $('#DemoTable tr:gt(2)').css('color', 'black');
      // Changes the text color of the first two rows to red.
      $('#DemoTable tr:lt(2)').css('color', 'red');
      $(':header').css('color', 'green');
    });
  </script>
</asp:Content>


