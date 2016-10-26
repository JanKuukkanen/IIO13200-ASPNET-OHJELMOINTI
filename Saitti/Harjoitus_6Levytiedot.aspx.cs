using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Harjoitus_6Levytiedot : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        xsrcLevyt.XPath = "Records/genre/record[@ISBN='" + Request.QueryString["ISBN"] + "']";
        xsrcBiisit.XPath = "Records/genre/record[@ISBN='" + Request.QueryString["ISBN"] + "']/song";
    }
}