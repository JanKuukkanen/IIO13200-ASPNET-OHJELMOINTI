using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class Feedit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnGetFeeds_Click(object sender, EventArgs e)
    {
        // Asetetaan xmlDataSourcen datalähteeksi IS:n rssfeedi
        string url = @"http://www.iltasanomat.fi/rss/tuoreimmat.xml";
        xdsIltaSanomat.DataFile = url;
        GetFeeds();
    }

    private void GetFeeds()
    {
        try
        {
            // Käytetään XmlDocument luokkaa ja sen metodeja, ominaisuuksia
            XmlDocument doc = new XmlDocument();
            doc = xdsIltaSanomat.GetXmlDocument();

            // Aluksi haetaan kanavan tietoja
            XmlNode node1 = doc.SelectSingleNode("/rss/channel");
            string title = node1["title"].InnerText;
            myDiv.InnerHtml = string.Format("<H1>{0} {1}</H1>", title, DateTime.Now.ToString());

            // Haetaan kaikki item-elementit ja loopitetaan ne läpi
            XmlNodeList nodes = doc.SelectNodes("rss/channel/item");
            string cat;
            string link;
            string piclink;
            foreach (XmlNode item in nodes)
            {
                // Haetaan kuvan url jos sellainen on
                if (item["enclosure"] != null)
                {
                    piclink = item["enclosure"].GetAttribute("url");
                }
                else
                {
                    piclink = "/Images/nope.png";
                }

                myDiv.InnerHtml += string.Format("<img src='{0}' style='height:50px; margin-top:20px;' />", piclink);

                // title, link, category luetaan elementeistä
                cat = item["category"].InnerText;
                title = item["title"].InnerText;
                link = item["link"].InnerText;
                myDiv.InnerHtml += string.Format("{0} <a href='{1}'>{2}</a>", cat, link, title);
                myDiv.InnerHtml += "<br />";
            }
        }
        catch (Exception ex)
        {

            myDiv.InnerHtml = ex.Message;
        }
    }

    protected void btnGetFeedsYle_Click(object sender, EventArgs e)
    {
        // Asetetaan xmlDataSourcen datalähteeksi IS:n rssfeedi
        string url = @"http://feeds.yle.fi/uutiset/v1/majorHeadlines/YLE_UUTISET.rss";
        xdsIltaSanomat.DataFile = url;
        GetFeeds();
    }
}