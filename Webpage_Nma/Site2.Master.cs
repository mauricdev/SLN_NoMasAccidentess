using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webpage_Nma
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string rut = System.Web.HttpContext.Current.Session["UserRut"].ToString();
            string correo = System.Web.HttpContext.Current.Session["UserCorreo"].ToString();
            string nombre = System.Web.HttpContext.Current.Session["UserNombre"].ToString();
            string passw = System.Web.HttpContext.Current.Session["UserPass"].ToString();
            string Telefono = System.Web.HttpContext.Current.Session["UserTelefono"].ToString();
            string empresa = System.Web.HttpContext.Current.Session["EMPRESA_EMP_RUT"].ToString();

            label3.Text = nombre;
            label4.Text = correo;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            System.Web.HttpContext.Current.Session["UserRut"] = "";
            System.Web.HttpContext.Current.Session["UserCorreo"] = "";
            System.Web.HttpContext.Current.Session["UserNombre"] = "";
            System.Web.HttpContext.Current.Session["UserPass"] = "";
            System.Web.HttpContext.Current.Session["UserTelefono"] = "";
            System.Web.HttpContext.Current.Session["EMPRESA_EMP_RUT"] = "";
            Response.Redirect("../index.aspx");
        }
    }
}