using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Harjoitus_4AsiakkaatSQL : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnCustomersSql_Click(object sender, EventArgs e)
    {
        try
        {
            gvCustomers.DataSource = srcCustomerSQL;
            gvCustomers.DataBind();
        }
        catch (Exception ex)
        {
            
            lblCustomerMsg.Text = ex.Message;
        }
    }

    protected void btnCustomersDB_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt = JAMK.IT.DBDemoxOy.GetDataReal();

        gvCustomers.DataSource = dt;
        gvCustomers.DataBind();
    }
}