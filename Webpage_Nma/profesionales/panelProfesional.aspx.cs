using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webpage_Nma.profesionales
{
    public partial class panel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            limpiar();
            W_NMA.Service1Client client = new W_NMA.Service1Client();

            string rut = System.Web.HttpContext.Current.Session["UserRut"].ToString();
            string correo = System.Web.HttpContext.Current.Session["UserCorreo"].ToString();
            string nombre = System.Web.HttpContext.Current.Session["UserNombre"].ToString();

            label1.Text = nombre;
            label3.Text = correo;
            label4.Text = nombre;
        }


        public void limpiar()
        {
            label1.Text= "";
            label3.Text = "";
            label4.Text = "";
        }
    }
}