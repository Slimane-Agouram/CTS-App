using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using CTS_App.Models;
using System.Text;

namespace CTS_App.Views
{
    public partial class AnomalieConnexion : System.Web.UI.Page
    {
        List<MyModel> test = new List<MyModel>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ListofVehicules();
                ListAnomalies();
            }
            
            if (GridViewAnomalies.Rows.Count != 0)
            {
                ButtonExporter.Visible = true;
            }

//            test
            for (int i = 0; i < 11; i++)
            {
                MyModel temp = new MyModel();
                temp.ID = i.ToString();
                temp.Ref = 2 * i + 1;
                test.Add(temp);
            }

        }

        protected void ListofVehicules()
        {
            List<string> vehicules = new List<string>();
            vehicules.Add("dd");
            vehicules.Add("ee");
            foreach (var vehicule in vehicules)
            {
                DropDownListVehicule.Items.Add(vehicule);
            }

        }

        protected void ListAnomalies()
        {
            List<string> anomalies = new List<string>();
            anomalies.Add("anomalies de connexion");
            anomalies.Add("anomalies non identifiées" );
            foreach (var anomaly in anomalies)
            {
                DropDownListAnomalies.Items.Add(anomaly);
            }
        }

        protected void GetAnomalies(List<MyModel> maliste)
        {
//            List<>
        }

        protected void ButtonValider_Click(object sender, EventArgs e)
        {
            if (DropDownListVehicule.SelectedIndex>-1 && DropDownListAnomalies.SelectedIndex>-1)
            {
                GridViewAnomalies.DataSource = test;
                GridViewAnomalies.DataBind();
                ButtonExporter.Visible = true;
            }
        }

        protected void ButtonExporter_Click(object sender, EventArgs e)
        {
//            List<MyModel> liste = new List<MyModel>();
////            liste = db.GetAllGagnantsByGameId(id_jeu);
////            this.RepeaterGagnants.DataSource = liste;
////            this.RepeaterGagnants.DataBind();
//
//            Response.Clear();
//            Response.Buffer = true;
//            Response.AddHeader("content-disposition", "attachment;filename=" + "Vehicule_ " + DropDownListVehicule.SelectedItem.Text + "_.xls");
//            Response.Charset = "";
//            Response.ContentType = "application/vnd.ms-excel";
//            Response.ContentEncoding = System.Text.Encoding.Unicode;
//            Response.BinaryWrite(System.Text.Encoding.Unicode.GetPreamble());
//            var stringWrite = new System.IO.StringWriter();
//            var htmlWrite = new HtmlTextWriter(stringWrite);
////            RepeaterGagnants.RenderControl(htmlWrite);
//            GridViewAnomalies.RenderControl(htmlWrite);
//            Response.Write("<table>");
//            Response.Write(stringWrite.ToString());
//            Response.Write("</table>");
//            Response.End();
//            
            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=GridViewExport.xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";
            using (StringWriter sw = new StringWriter())
            {
                HtmlTextWriter hw = new HtmlTextWriter(sw);

                //To Export all pages
                GridViewAnomalies.AllowPaging = false;
//                this.BindGrid();
                GridViewAnomalies.DataBind();
                GridViewAnomalies.HeaderRow.BackColor = Color.White;
                foreach (TableCell cell in GridViewAnomalies.HeaderRow.Cells)
                {
                    cell.BackColor = GridViewAnomalies.HeaderStyle.BackColor;
                }
                foreach (GridViewRow row in GridViewAnomalies.Rows)
                {
                    row.BackColor = Color.White;
                    foreach (TableCell cell in row.Cells)
                    {
                        if (row.RowIndex % 2 == 0)
                        {
                            cell.BackColor = GridViewAnomalies.AlternatingRowStyle.BackColor;
                        }
                        else
                        {
                            cell.BackColor = GridViewAnomalies.RowStyle.BackColor;
                        }
                        cell.CssClass = "textmode";
                    }
                }

                GridViewAnomalies.RenderControl(hw);

                //style to format numbers to string
                string style = @"<style> .textmode { } </style>";
                Response.Write(style);
                Response.Output.Write(sw.ToString());
                Response.Flush();
                Response.End();
            }
        }

        public override void
   VerifyRenderingInServerForm(Control control)
        {
            return;
        }


    }
}