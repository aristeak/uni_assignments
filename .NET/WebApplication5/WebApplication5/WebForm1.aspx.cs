using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        eu.dataaccess.footballpool.ws.Info info = new eu.dataaccess.footballpool.ws.Info();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string[] infoArray = info.StadiumNames();

                stadiums.Items.Add("-Eπιλέξτε στάδιο-");
                for (int i = 0; i < infoArray.Length; i++)
                {
                    stadiums.Items.Add(infoArray[i]) ;
                }
            }   
        }

        protected void StadiumInfo(object sender, EventArgs e)
        {
            eu.dataaccess.footballpool.ws.tStadiumInfo tStadium = info.StadiumInfo(stadiums.SelectedValue);
            name.Text = tStadium.sName;
            seats.Text = Convert.ToString(tStadium.iSeatsCapacity);
            town.Text = tStadium.sCityName;
            wiki.NavigateUrl = tStadium.sWikipediaURL;
            google.NavigateUrl = tStadium.sGoogleMapsURL;
        }

    }
}