using System;
using System.Web;

/// <summary>
/// Summary description for BasePage
/// </summary>
public class BasePage : System.Web.UI.Page
{
    private void Page_PreRender(object sender, EventArgs e)
    {
        if (this.Title == "Untitiled Page" || String.IsNullOrEmpty(this.Title))
        {
            throw new Exception("Page title cannot be\"Untitled Page\" or an empty string.");
        }
    }
    //Sets the theme of the page as per users selection
    private void Page_PreInit(object sender, EventArgs e)
    {
        HttpCookie preferredTheme = Request.Cookies.Get("PreferredTheme");
        if (preferredTheme != null)
        {
            Page.Theme = preferredTheme.Value;
        }
    }
    public BasePage()
    {
        //
        // TODO: Add constructor logic here
        //
        this.PreRender += new EventHandler(Page_PreRender);
        this.PreInit += new EventHandler(Page_PreInit);
    }
}