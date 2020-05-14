using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webpage_Nma.Cliente
{
    public partial class fiscalizacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string rut = System.Web.HttpContext.Current.Session["UserRut"].ToString();
            string correo = System.Web.HttpContext.Current.Session["UserCorreo"].ToString();
            string nombre = System.Web.HttpContext.Current.Session["UserNombre"].ToString();
            string passw = System.Web.HttpContext.Current.Session["UserPass"].ToString();
            string Telefono = System.Web.HttpContext.Current.Session["UserTelefono"].ToString();
            string empresa = System.Web.HttpContext.Current.Session["EMPRESA_EMP_RUT"].ToString();

            Label1.Text = nombre;
            label2.Text = correo;
        }

        protected void BTN2_Click(object sender, EventArgs e)
        {
            W_NMA.Service1Client client = new W_NMA.Service1Client();
            W_NMA.USUARIOEMPRESA pro = new W_NMA.USUARIOEMPRESA();
            W_NMA.LOG_FIZCALI fi = new W_NMA.LOG_FIZCALI();
        }
    }
}