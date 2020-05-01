using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webpage_Nma
{
    public partial class panel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            W_NMA.Service1Client client = new W_NMA.Service1Client();


            string rut = System.Web.HttpContext.Current.Session["UserRut"].ToString();
            string correo = System.Web.HttpContext.Current.Session["UserCorreo"].ToString();
            string nombre = System.Web.HttpContext.Current.Session["UserNombre"].ToString();


            label3.Text = nombre;
            label4.Text = correo;
            label5.Text = nombre;


        }
    }
}