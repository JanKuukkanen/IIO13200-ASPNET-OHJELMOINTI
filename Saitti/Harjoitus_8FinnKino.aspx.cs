using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class Harjoitus_8FinnKino : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (listbTeatterit.Items.Count == 0)
        {
            string theatreUrl = @"http://www.finnkino.fi/xml/TheatreAreas/";
            xdsTheatres.DataFile = theatreUrl;

            GetXMLTheatres(); 
        }
        
    }

    private void GetXMLTheatres()
    {
        try
        {
            // Käytetään XmlDocument luokkaa ja sen metodeja, ominaisuuksia
            XmlDocument theatreXml = new XmlDocument();
            theatreXml = xdsTheatres.GetXmlDocument();

            // Haetaan Name elementit ja asetetaan ne ListBoxiin
            XmlNodeList nodes = theatreXml.SelectNodes("TheatreAreas/TheatreArea");

            foreach (XmlNode item in nodes)
            {
                listbTeatterit.Items.Add(item["Name"].InnerText);
            }

            

        }
        catch (Exception ex)
        {

            lbMessage.Text = ex.ToString();
        }
    }

    protected void listbTeatterit_TextChanged(object sender, EventArgs e)
    {
        GetXMLMovies();
    }

    private void GetXMLMovies()
    {
        string area = listbTeatterit.SelectedValue;
        string[] theatreArray = { "valitse alue/teatteri", "Pääkaupunkiseutu", "Espoo", "Espoo: Omena", "Espoo: Sello", "Helsinki", "Helsinki: Kinopalatsi", 
                                    "Helsinki: Tennispalatsi", "Jyväskylä", "Kuopio", "Lahti", "Lappeenranta", "Oulu", "Pori", "Tampere", "Tampere: Cine Atlas", "Tampere: Plevna", 
                                    "Turku", "Vantaa"};

        string[] areaidArray = {"1029", "1014", "1012", "1039", "1038", "1002", "1031", "1033", "1015", "1016", "1017", "1041", "1018", "1019", "1021", "1034", "1035", "1022", "1013"};

        string areaid = "";

        for (int i = 0; i < theatreArray.Count(); i++)
        {
            if (area == theatreArray[i])
            {
                areaid = areaidArray[i];
            } 
        }

        try
        {
            XmlDocument movieXml = new XmlDocument();

            string movieUrl = @"http://www.finnkino.fi/xml/Schedule/?area=" + areaid + "&dt=" + DateTime.Now.ToString("dd.MM.yyyy") + "&nrOfDays=7";
            xdsMovies.DataFile = movieUrl;

            lbMessage.Text = movieUrl;

            movieXml = xdsMovies.GetXmlDocument();

            XmlNodeList nodes = movieXml.SelectNodes("Schedule/Shows/Show");

            string imageUrl = "";
            List<string> covers = new List<string>();

            messageDiv.InnerHtml = "";

            foreach (XmlNode item in nodes)
            {
                XmlNodeList images = item.SelectNodes("Images/EventSmallImagePortrait");

                for (int i = 0; i < images.Count; i++)
                {
                    if (!covers.Contains(imageUrl))
                    {
                        imageUrl = images[i].InnerText;

                        messageDiv.InnerHtml += string.Format("<img src='{0}' style='height:50px; margin-top:20px;' />", imageUrl); 
                    }
                }
            }

        }
        catch (Exception ex)
        {

            lbError.Text = ex.ToString();
        }
    }
}