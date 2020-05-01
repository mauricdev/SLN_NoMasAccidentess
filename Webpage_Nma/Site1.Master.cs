using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webpage_Nma
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        W_NMA.Service1Client client = new W_NMA.Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {
            string rut = System.Web.HttpContext.Current.Session["UserRut"].ToString();
            string correo = System.Web.HttpContext.Current.Session["UserCorreo"].ToString();
            string nombre = System.Web.HttpContext.Current.Session["UserNombre"].ToString();
            string passw = System.Web.HttpContext.Current.Session["UserPass"].ToString();
            string Telefono = System.Web.HttpContext.Current.Session["UserTelefono"].ToString();
            string empresa = System.Web.HttpContext.Current.Session["EMPRESA_EMP_RUT"].ToString();

            label1.Text = nombre;
            label2.Text = correo;
        }
    }
}