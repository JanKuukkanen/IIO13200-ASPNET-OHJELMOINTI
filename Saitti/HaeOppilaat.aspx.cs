﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class HaeOppilaat : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnGet3_Click(object sender, EventArgs e)
    {
        // Haetaan luokan metodilta dataa ja kiinnitetään se kontrolliin
        DataTable dt = JAMK.ICT.Data.DBPlacebo.Get3TestStudents();
        gvStudents.DataSource = dt;
        gvStudents.DataBind();
    }

    protected void btnGetAll_Click(object sender, EventArgs e)
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["Oppilaat"].ConnectionString;
        string messu = "";

        try
        {
            DataTable dt = JAMK.ICT.Data.DBPlacebo.GetAllStudentsFromSQLServer(cs, "oppilaat", out messu);
            gvStudents.DataSource = dt;
            gvStudents.DataBind();
        }
        catch (Exception ex)
        {
            // mihin poikkeus viesti kirjoitetaan? lisää UIhin joku elementti.
            lblMessages.Text = ex.Message;
        }
    }

    protected void btnGet3oppilas_Click(object sender, EventArgs e)
    {
        // haetaan valmiista businesslogiikasta oppilas-olioita ja
        // kiinnitetään ne kontrollin datasourceksi

        var oppilaat = new JAMK.ICT.BL.Oppilaat().Hae3TestiOppilasta();
        gvStudents.DataSource = oppilaat;
        gvStudents.DataBind();
    }
}