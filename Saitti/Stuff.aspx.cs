using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Stuff : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void gvStuff_SelectedIndexChanged(object sender, EventArgs e)
    {
        // näytetään valittu stuffi
        int i = gvStuff.SelectedIndex;
        string nimi = gvStuff.Rows[i].Cells[1].Text;
        string stuffi = gvStuff.Rows[i].Cells[2].Text;
        myStuff.Text = string.Format("{0} {1}", nimi, stuffi);

        // Vaihdetaan detailsviewn indexi
        dvStuff.PageIndex = i;
    }
}