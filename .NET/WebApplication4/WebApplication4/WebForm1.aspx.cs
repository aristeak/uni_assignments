using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using WebApplication4.com.lavasoft.wsgeoip;

namespace WebApplication4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        GeoIPService geoIPService= new GeoIPService();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        { 
            string country = geoIPService.GetIpLocation_2_0(ipTx.Text);
            XmlDocument doc = new XmlDocument();
            doc.LoadXml(country);
            XmlNode node = doc.DocumentElement.SelectSingleNode("//GeoIP");
            string iso = node["Country"].InnerText;
            country1.Text = geoIPService.GetCountryNameByISO2(iso) + ", " + node["State"].InnerText;   
        }
    }
}