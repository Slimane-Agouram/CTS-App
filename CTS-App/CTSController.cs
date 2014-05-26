using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using CTS_App.Models;

namespace CTS_App
{
    public class CtsController : ApiController
    {
        // GET api/<controller>
        public void Get()
        {
            
//            Rootobject  m = new Rootobject();
//            m.data = new[] {3.2, 4.5};
//            m.series = new[] {"series1", "series2"};
//            return m;
        }

        [HttpGet]
        [ActionName("GetGraph")]
        public Rootobject GetGraph([FromUri]ResultGraph r)
        {
            System.Diagnostics.Debug.WriteLine("debut envoi\n");

            System.Diagnostics.Debug.WriteLine("dateDebut: "+ r.dateDebut + "\n dateFin: "+ r.dateFin + "\n ligne: "+ r.ligne + " \n vehicule: " + r.vehicule);
            string[] series = { "serie1", "serie2", "serie3" };
                        int[] valeurs = new int[3];
                        valeurs[0] = 1;
                        valeurs[1] = 2;
                        valeurs[2] = 3;
                        Datum[] datum = new Datum[2];
                        datum[0] = new Datum("x", valeurs, "tooltip");
                        int[] valeurs2 = new int[3];
                        valeurs2[0] = 3;
                        valeurs2[1] = 4;
                        valeurs2[2] = 1;
                        datum[1] = new Datum("y", valeurs2, "tooltip");
                        return new Rootobject(series, datum);
        }

        // GET api/<controller>/5
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<controller>
        public void Post([FromBody]string value)
        {
        }

        // PUT api/<controller>/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/<controller>/5
        public void Delete(int id)
        {
        }
    }
}