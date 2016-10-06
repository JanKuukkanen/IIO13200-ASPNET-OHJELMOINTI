using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class TestMySQL : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnGetCities_Click(object sender, EventArgs e)
    {
        try
        {
            //Vaatii Mysql.Data.dll tiedoston (tässä haettu https://www.nuget.org/packages/MySql.Data/ sivulta käyttäen visual studion nuget package managerin consolea)
            string cs = System.Configuration.ConfigurationManager.ConnectionStrings["mysli"].ConnectionString;
            //string cs = "server=mysql.labranet.jamk.fi;database=salesa;user=salesa;password=fyEfchdior3MZlrcjz6U27L0aiNolowl";
            DataTable dt = JAMK.ICT.Data.DBPlacebo.GetCitysFromMysql(cs);
            gvCities.DataSource = dt;
            gvCities.DataBind();
        }
        catch (Exception ex)
        {

            lblMessages.Text = ex.Message;
        }
    }
}