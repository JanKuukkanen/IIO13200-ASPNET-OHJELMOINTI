using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using Newtonsoft.Json;
using JAMK.IT;

public partial class Harjoitus_9Junat : System.Web.UI.Page
{
    List<Station> stations = new List<Station>();
    List<Train> trains = new List<Train>();

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Response.ContentEncoding = System.Text.Encoding.UTF8;

            string ddlJson = GetJsonFrom("http://rata.digitraffic.fi/api/v1/metadata/stations");

            stations = JsonConvert.DeserializeObject<List<Station>>(ddlJson);

            for (int i = 0; i < stations.Count; i++)
			{
                string item = stations[i].StationName.ToString();

                if (ddlStations.Items.FindByText(item) == null)
                {
                    ddlStations.Items.Add(item);
                }
			}

        }
        catch (Exception ex)
        {

            lbAlert.Text = ex.Message;
        }

    }

    protected void btnDeparture_Click(object sender, EventArgs e)
    {
        string stationName = ddlStations.SelectedItem.ToString();
        string trainJson = "";

        lbAlert.Text = stationName;

        foreach (var asema in stations)
        {
            if (asema.StationName.ToString() == stationName)
            {
                trainJson = GetJsonFrom("http://rata.digitraffic.fi/api/v1/live-trains?station=" + asema.StationShortCode.ToString());
            }
        }

        trains = JsonConvert.DeserializeObject<List<Train>>(trainJson);

        gvTrains.DataSource = trains;
        gvTrains.DataBind();
    }

    protected string GetJsonFrom(string url)
    {
        using (WebClient wc = new WebClient())
        {
            var json = wc.DownloadString(url);
            return json;
        }
    }
}