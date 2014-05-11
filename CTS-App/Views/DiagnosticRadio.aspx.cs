using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CTS_App.Views
{
    public partial class DiagnosticRadio : System.Web.UI.Page
    {
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

        public List<string> definirQualityRadio()
        {
            List<string> liste = new List<string>();
            liste.Add("Bonne Qualité");
            liste.Add("Mauvaise Qualité");
            return liste;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            List<string> liste = definirListeLignes();
            foreach (var l in liste)
            {
                DropDownListLigne.Items.Add(l);
            }

            List<string> quality = definirQualityRadio();
            foreach (var q in quality)
            {
                DropDownListQuality.Items.Add(q);
            }
        }
    }
}