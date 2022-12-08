using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        eu.dataaccess.footballpool.ws.Info football = new eu.dataaccess.footballpool.ws.Info();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                teamlist.Items.Add("-Επιλέξτε εθνική ομάδα-");
                string[] tNames = football.TeamNames();
                for(int i = 0; i < tNames.Length; i++)
                {
                    teamlist.Items.Add(tNames[i]);
                    
                }

            }


        }

        protected void Change(object sender, EventArgs e)
        {
            playerslist.Items.Clear();
            noselectedplayerslist.Items.Clear();

            eu.dataaccess.footballpool.ws.tPlayer[] selected = football.TeamPlayers(teamlist.SelectedValue,true);
            for(int i=0; i< selected.Length;i++ )
            {
                playerslist.Items.Add(selected[i].sFullName);
            }
            playersnumber.Text ="("+ Convert.ToString(selected.Length)+")";

            eu.dataaccess.footballpool.ws.tPlayer[] noSelected = football.TeamPlayers(teamlist.SelectedValue,false);

            for (int i = 0; i < noSelected.Length; i++)
            {
                noselectedplayerslist.Items.Add(noSelected[i].sFullName);
            }
            noselectedplayersnumber.Text = "(" + Convert.ToString(noSelected.Length) + ")";

            playerslabel.Visible = true;
            playersnumber.Visible = true;   
            playerslist.Visible = true;

            noselectedplayerslabel.Visible = true;
            noselectedplayersnumber.Visible = true;
            noselectedplayerslist.Visible = true;

        }
    }
}