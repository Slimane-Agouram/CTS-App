using System;
using System.Collections.Generic;
using System.EnterpriseServices.CompensatingResourceManager;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CTS_App.Models;

namespace CTS_App.Views
{
    public partial class DiagnosticRadio : System.Web.UI.Page
    {
        List<MyModel> test = new List<MyModel>();

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
//            test
            for (int i = 0; i < 11; i++)
            {
                MyModel temp = new MyModel();
                temp.ID = i.ToString();
                temp.Ref = 2 * i + 1;
                test.Add(temp);
            }
            
            GridViewVehicules.DataSource = test;
            GridViewVehicules.DataBind();

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

//        protected List<MyModel> DisplayList(List<MyModel> l)
//        {
//            List<MyModel> liste = new List<MyModel>();
//            String predicat = TextBoxVehicule.Text;
//            foreach (MyModel m in l)
//            {
//                if (predicat == m.ID)
//                {
//                    liste.Add(m);
//
//                }
//            }
//            GridViewVehicules.DataSource = liste;
//            GridViewVehicules.DataBind();
//        }

        protected void TextBoxVehicule_TextChanged(object sender, EventArgs e)
        {
            List<MyModel> liste = new List<MyModel>();
            String predicat = TextBoxVehicule.Text;
            foreach (MyModel m in test )
            {
                if (m.ID.Contains(predicat))
                {
                    liste.Add(m);

                }
            }
            GridViewVehicules.DataSource = liste;
            GridViewVehicules.DataBind();

        }
    }
}