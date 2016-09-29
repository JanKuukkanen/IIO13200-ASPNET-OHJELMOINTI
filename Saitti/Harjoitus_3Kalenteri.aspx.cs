using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Harjoitus_3Kalenteri : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string today = CalDay.TodaysDate.ToShortDateString();
        lbSelectedToday.Text = today;
    }

    protected void CalDay_SelectionChanged(object sender, EventArgs e)
    {
        string today = CalDay.TodaysDate.ToString();
        string chosentotaldays = (CalDay.TodaysDate - CalDay.SelectedDate).TotalDays.ToString();
        string chosenday = CalDay.SelectedDate.ToShortDateString();

        lbSelectedDay.Text = chosenday;

        lbErotus.Text = chosentotaldays + " days";
    }

    protected void btnLastYear_Click(object sender, EventArgs e)
    {
        DateTime changeyear = CalDay.VisibleDate.AddYears(-1);
        CalDay.VisibleDate = changeyear;
    }

    protected void btnNextYear_Click(object sender, EventArgs e)
    {
        CalDay.VisibleDate = CalDay.VisibleDate.Date.AddYears(1);
    }
}