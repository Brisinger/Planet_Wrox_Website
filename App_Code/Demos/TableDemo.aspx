<%@ Page Title="Planet Wrox" Language="C#" AutoEventWireup="true" CodeFile="TableDemo.aspx.cs" Inherits="Demos_TableDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
  <style type="text/css">
    .auto-style1 {
      width: 100%;
    }

    .auto-style2 {
      width: 200px;
    }
  </style>
</head>
<body>
  <form id="form1" runat="server">
    <div>

      <table class="auto-style1">
        <tr>
          <td class="auto-style2"><strong>Bulleted List</strong></td>
          <td>

            <ul>
              <li>Indie Rock</li>
              <li>Techno</li>
              <li>Punk</li>
            </ul>

          </td>
        </tr>
        <tr>
          <td class="auto-style2"><strong>Numbered List</strong></td>
          <td>
            <ol>
              <li>Jazz</li>
              <li>Hip Hop</li>
              <li>Rock</li>
            </ol>
          </td>
        </tr>
        <tr>
          <td class="auto-style2"><strong>Link</strong></td>
          <td><a href="../Default.aspx">Go to the home page of Planet Wrox</a> </td>
        </tr>
      </table>

    </div>
  </form>
</body>
</html>
