using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Threading.Tasks;
using System.Text.RegularExpressions;
using JAMK.ICT.BL;

public partial class Saitti_Harjoitus_2Lotto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (ddlLottery.Items.FindByText("Suomi") == null)
        {
            ddlLottery.Items.Add("Suomi");
            ddlLottery.Items.Add("VikingLotto");
            ddlLottery.SelectedValue = "Suomi";
        }
    }

    protected void btnDraws_Click(object sender, EventArgs e)
    {
        try
        {
            List<int> results = new List<int>();

            Regex pattern = new Regex("^[1-9]+$");
            if (!pattern.IsMatch(txtDraws.Text))
            {
                lblAlert.Text = "Please specify a number higher than 0 for the lottery";
            }
            else if (txtDraws.Text == "")
            {
                lblAlert.Text = "Please specify a number higher than 0 for the lottery";
            }
            else
            {
                int drawnumber = int.Parse(txtDraws.Text);

                for (int i = 0; i != drawnumber; i++)
                {
                    if (i >= 1 || lsbNumbers.Items.Count == 0)
                    {
                        lsbNumbers.Items.Add("Next lottery");
                    }

                    Lotto lotto = new Lotto(ddlLottery.SelectedValue);

                    results = lotto.ArvoRivi();

                    for (int nro = 0; nro < results.Count; nro++)
                    {
                        lsbNumbers.Items.Add(results[nro].ToString());
                    }
                }

                lblAlert.Text = "...";
            }
        }
        catch (Exception er)
        {
            lblAlert.Text = "Invalid input: " + er;
        }
    }

    protected void Clear_Click(object sender, EventArgs e)
    {
        lsbNumbers.Items.Clear();
        lblAlert.Text = "...";
    }
}