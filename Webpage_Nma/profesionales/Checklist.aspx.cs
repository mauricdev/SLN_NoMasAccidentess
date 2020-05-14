using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Webpage_Nma.W_NMA;

namespace Webpage_Nma.profesionales
{
    public partial class Checklist : System.Web.UI.Page
    {
        W_NMA.Service1Client client = new W_NMA.Service1Client();
        List<VISITA> listadoVisita;
        protected void Page_Load(object sender, EventArgs e)
        {
            listadoVisita = new List<VISITA>();
            
        }

        //private void LLenarDatos()
        //{
        //    string rut = System.Web.HttpContext.Current.Session["EMPRESA_EMP_RUT"].ToString();
        //    foreach (var i in client.listarAsesorias(rut))
        //    {
        //        W_NMA.ASESORIA pro = new W_NMA.ASESORIA()
        //        {

        //            ASES_ID = int.Parse(i.ASES_ID.ToString()),
        //            ASES_FECHA = DateTime.Parse(i.ASES_FECHA.ToString()),
        //            ASES_REALIZADA = i.ASES_REALIZADA.ToString(),
        //            ASES_TIPO = i.ASES_TIPO.ToString(),
        //        };
        //        listadoVisita.Add(pro);
        //    }
        //    GridView1.DataSource = listadoAsesorias;
        //    GridView1.DataBind();
        //}
    }
}