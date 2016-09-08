using System;
using System.Configuration; // web.configia varten
using System.Data; // ADO.NETin luokkia varten
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HaeTyontekijat : System.Web.UI.Page
{
    string xmlfilu;
    protected void Page_Load(object sender, EventArgs e)
    {
        // luetaan web.configista xml-tiedoston nimi
        xmlfilu = ConfigurationManager.AppSettings["tiedosto"];
        lblMessage.Text = xmlfilu;
    }

    protected void btnHae_Click(object sender, EventArgs e)
    {
        // luetaan xml-tiedostosta työntekijöiden tiedot ja esitetään ne GridViewssa
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        DataView dv = new DataView();

        ds.ReadXml(Server.MapPath(xmlfilu)); // MapPath palauttaa absoluuttisen fyysisen polun
        dt = ds.Tables[0];
        dv = dt.DefaultView;
        // datan sitominen ui-kontrolliin
        gvData.DataSource = dv;
        gvData.DataBind();
        lblMessage.Text = string.Format("löytyi {0} työntekijää", dt.Rows.Count);
    }
}