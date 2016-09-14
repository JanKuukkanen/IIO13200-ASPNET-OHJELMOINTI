using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Saitti_Harjoitus_01 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btncalculatePrice_Click(object sender, EventArgs e)
    {
        //Hinta (ilman alvia) = (1 + kate%) x ((IkkunanPintaAla x LasinNeliohinta) + (KarminPiiri x AlumiiniKarminJuoksumetriHinta) + (Työmenekki))
        //Käytetään tehtävässä seuraavia parametrejä:
        //kate% = 30%  LasinNelioHinta=45€/m2  AlumiiniKarminJuoksumetriHinta=100€/jm  Työmenekki=150€/ikkuna

        int checkfordigits = 0;

        if (!txtwidth.Text.Equals("") && !txtheight.Text.Equals("") && !txtframe.Text.Equals(""))
        {
            checkfordigits = checkDigit(txtwidth.Text, txtheight.Text, txtframe.Text);
        }

        if (checkfordigits == 4)
        {
            double leveys = Convert.ToInt32(txtwidth.Text); // ikkunan leveys
            double korkeus = Convert.ToInt32(txtheight.Text); // ikkunan korkeus
            double karmi = Convert.ToInt32(txtframe.Text); // karmipuun leveys

            double ikkunanpintaala = leveys * korkeus; // ikkunan pinta-ala

            double kokonaispintaala = (korkeus + (karmi * 2)) * (leveys + (karmi * 2)); // pinta-ala karmin kanssa
            double karminpintaala = kokonaispintaala - ikkunanpintaala;

            double karminpiiri = ((leveys + karmi * 2) * 2) + ((korkeus + karmi * 2) * 2);
            double hinta = ((1.0 + 0.3) * ((ikkunanpintaala / 1000000.0) * 45.0) + ((karminpiiri / 1000.0) * 100.0) + (150.0));

            lblwindowAreaResult.Text = (ikkunanpintaala / 1000000).ToString() + " m2";
            lblframeRadResult.Text = (karminpiiri / 1000).ToString() + " m";

            lblpriceResult.Text = (hinta).ToString() + " €";
        }
    }

    public int checkDigit(string width, string height, string frame)
    {
        int i = 0;
        int notdigit = 4;

        while (i < width.Count())
        {
            if (!char.IsDigit(width[i]))
            {
                notdigit = 1;
                txtwidth.Text = "Syötä ainoastaan numeroita";
            }
            i = i + 1;
        }

        i = 0;

        while (i < height.Count())
        {
            if (!char.IsDigit(height[i]))
            {
                notdigit = 2;
                txtheight.Text = "Syötä ainoastaan numeroita";
            }
            i = i + 1;
        }

        i = 0;

        while (i < frame.Count())
        {
            if (!char.IsDigit(frame[i]))
            {
                notdigit = 3;
                txtframe.Text = "Syötä ainoastaan numeroita";
            }
            i = i + 1;
        }
        return notdigit;
    }
}