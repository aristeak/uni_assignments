using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        org.oorsprong.www.CountryInfoService ct = new org.oorsprong.www.CountryInfoService();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack == false)
            { 
                DropDownList1.Items.Add("-Select-");
                org.oorsprong.www.tCountryCodeAndName[] clist = ct.ListOfCountryNamesByName();
                foreach(org.oorsprong.www.tCountryCodeAndName c in clist)
                {
                    string countryName = c.sName;
                    DropDownList1.Items.Add(countryName);
                }
            }
        }


        protected void ServiceCall(object sender, EventArgs e)
        {
            string selectedCountryName = DropDownList1.Text; // Convert.ToString(DropDownList1.SelectedItem);
    
            if(selectedCountryName != "-Select-")
            {
                string isoCode = ct.CountryISOCode(selectedCountryName);
                //string capitalCity = ct.CapitalCity(isoCode);
                //string countryImageURL = ct.CountryFlag(isoCode);
                //string countryPhoneCode = ct.CountryIntPhoneCode(isoCode);
                org.oorsprong.www.tCurrency currency = ct.CountryCurrency(isoCode);
                org.oorsprong.www.tCountryInfo ci = ct.FullCountryInfo(isoCode);
           

                IsoCode.Text = isoCode;
                Town.Text = ci.sCapitalCity; //capitalCity;
                Image1.ImageUrl = ci.sCountryFlag; // countryImageURL;
                NoCode.Text = ci.sPhoneCode; // countryPhoneCode;
                Currency.Text = currency.sName + " (" + currency.sISOCode + ")";
                Language.Text = ci.Languages.First().sName;

            }

        }
            
    }
}