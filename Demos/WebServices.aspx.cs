using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
public partial class Demos_WebServices : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    /*Server side Page method accessible from the client side code*/
    [WebMethod]
    public static String HelloWorld(string name)
    {
        return String.Format("Hello {0}", name);
    }
}