using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Listcontrols : System.Web.UI.Page
{
  protected void Page_Load(object sender, EventArgs e)
  {

  }

  protected void Button1_Click(object sender, EventArgs e)
  {
    /*SelectedValue is a read and write property of ListControl.
     Items is a read only property of ListControl that returns the collection of items within the control
     in te form of ListItemCollection.
     List controls have properties SelectedValue, SelectedIndex and SelectedItem. These properties help is fetching
     items within the control that have been selected. All these Listcontrols are defined in System.Web.UI.WebControls
     namespace under the ListControl abstract class.*/
    Label1.Text = "In the DDL you selected " + DropDownList1.SelectedValue + "<br/>";
    foreach (ListItem item in CheckBoxList1.Items)
    {
      if (item.Selected == true)
      {
        Label1.Text += "In the CBL you selected " + item.Value + "<br/>";
      }
    }
  }
}