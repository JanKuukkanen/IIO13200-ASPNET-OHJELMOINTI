using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

public partial class Harjoitus_5LuoAsiakas : System.Web.UI.Page
{
    private static DemoxOyEntities ctx;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ctx = new DemoxOyEntities();
            FillControls();
        }
    }

    protected void btnLuoAsiakas_Click(object sender, EventArgs e)
    {
        bool inputsvalid = checkUserInputs();

        if (inputsvalid == true)
        {
            using (DemoxOyEntities db = new DemoxOyEntities())
            {
                asiakas cust = new asiakas();
                cust.astunnus = txtTunnus.Text;
                cust.asnimi = txtNimi.Text;
                cust.yhteyshlo = txtYhteysHlo.Text;
                cust.maa = ddlCountries.SelectedValue;
                cust.postinro = txtPostiNro.Text;
                cust.postitmp = txtPostiTmp.Text;
                cust.ostot = double.Parse(txtOstot.Text);
                cust.asvuosi = Int16.Parse(txtVuosi.Text);
                db.asiakas.Add(cust);
                db.SaveChanges();
                lbMessages.Text = string.Format("Uusi Asiakas {0} tallennettu tietokantaan!", cust.asnimi);
            }
        }
    }

    #region METHODS

    protected void FillControls()
    {
        try
        {
            // Täytetään DropDownList tietokannan tiedoilla
            var retval = ctx.asiakas.OrderBy(x => x.maa).Select(x => x.maa).Distinct();
            ddlCountries.DataSource = retval.ToList();
            ddlCountries.DataBind();
        }
        catch (Exception ex)
        {

            lbMessages.Text = ex.Message;
        }
    }

    public bool checkUserInputs()
    {
        bool inputsvalid = true;

        if (txtTunnus.Text == "")
        {
            inputsvalid = false;
            lbMessages.Text = "Jokin meni pieleen tekstisyötteiden validoinnissa";
        }
        if (txtNimi.Text == "")
        {
            inputsvalid = false;
            lbMessages.Text = "Jokin meni pieleen tekstisyötteiden validoinnissa";
        }
        if (txtYhteysHlo.Text == "")
        {
            inputsvalid = false;
            lbMessages.Text = "Jokin meni pieleen tekstisyötteiden validoinnissa";
        }
        if (txtPostiNro.Text == "")
        {
            inputsvalid = false;
            lbMessages.Text = "Jokin meni pieleen tekstisyötteiden validoinnissa";
        }
        if (txtPostiTmp.Text == "")
        {
            inputsvalid = false;
            lbMessages.Text = "Jokin meni pieleen tekstisyötteiden validoinnissa";
        }

        Regex regex = new Regex(@"^\d+$");

        if (!regex.IsMatch(txtOstot.Text))
        {
            inputsvalid = false;
            lbMessages.Text = "Jokin meni pieleen Regex validoinnissa";
        }

        if (!regex.IsMatch(txtVuosi.Text))
        {
            inputsvalid = false;
            lbMessages.Text = "Jokin meni pieleen Regex validoinnissa";
        }

        return inputsvalid;
    }
    #endregion
}