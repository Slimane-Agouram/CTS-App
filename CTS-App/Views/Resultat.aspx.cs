using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CTS_App.Views
{
    public partial class Resultat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DropdownListLigne.DataSource = definirListeLignes();
            DropdownListLigne.DataBind();
            DropdownListVehicule.DataSource = definirListeLignes();
            DropdownListVehicule.DataBind();
        }

        public List<string> definirListeLignes()
        {
            List<string> liste = new List<string>();
            liste.Add('A'.ToString());
            liste.Add('E'.ToString());
            liste.Add('F'.ToString());
            liste.Add('C'.ToString());
            liste.Add('D'.ToString());
            liste.Add("15");
            liste.Add("30");
            liste.Add("18");
            liste.Add("2");
            liste.Add("5");

            return liste;


        }
    }
}