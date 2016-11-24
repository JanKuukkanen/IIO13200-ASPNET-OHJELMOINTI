using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Harjoitus_5DemoxOy : System.Web.UI.Page
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

    #endregion

    #region BUTTONS

    protected void btnGetAllCustomers_Click(object sender, EventArgs e)
    {
        try
        {
            gvCustomers.DataSource = ctx.asiakas.ToList();
            gvCustomers.DataBind();
        }
        catch (Exception ex)
        {

            lbMessages.Text = ex.Message;
        }
    }

    protected void btnGetCustomersByCountry_Click(object sender, EventArgs e)
    {
        try
        {
            string country = ddlCountries.SelectedValue;
            var retval = ctx.asiakas.Where(x => x.maa == country).Select(x => x);

            gvCustomers.DataSource = retval.ToList();
            gvCustomers.DataBind();
        }
        catch (Exception ex)
        {

            lbMessages.Text = ex.Message;
        }
    }

    protected void btnGetCustomersSortedByCountry_Click(object sender, EventArgs e)
    {
        var retval = ctx.asiakas.OrderBy(x => x.maa).Select(x => x);

        gvCustomers.DataSource = retval.ToList();
        gvCustomers.DataBind();
    }

    #endregion
}