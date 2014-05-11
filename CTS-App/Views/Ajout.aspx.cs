using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CTS_App.Views
{
    public partial class Ajout : System.Web.UI.Page
    {
        public List<string> DefinirTypeFichiers()
        {
            List<string> typesFichiers = new List<string>();
            typesFichiers.Add("Fichier Serveur");
            typesFichiers.Add("Fichier Calculateur");
            return typesFichiers;
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            List<string> typesFichiers = DefinirTypeFichiers();
           
            foreach (string typesFichier in typesFichiers)
            {
                DropDownListTypeFichier.Items.Add(typesFichier);
            }
        }

        protected void ValiderButton_Click(object sender, EventArgs e)
        {
            
        }
    }
}