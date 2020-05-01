using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webpage_Nma.Cliente
{
    public partial class modificarClientes : System.Web.UI.Page
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

        protected void btn1_Click(object sender, EventArgs e)
        {
            W_NMA.Service1Client client = new W_NMA.Service1Client();
            W_NMA.USUARIOEMPRESA pro = new W_NMA.USUARIOEMPRESA();
            string empresa = System.Web.HttpContext.Current.Session["EMPRESA_EMP_RUT"].ToString();
            string rut = System.Web.HttpContext.Current.Session["UserRut"].ToString();
            string Nombre = txtnombre.Text;
            string correo = TextCorreo.Text;
            string numero = TextNumber.Text;


            try
            {
                if (String.IsNullOrEmpty(txtnombre.Text.Trim()))
                {
                    throw new Exception("El nombre no puede estar vacío");
                }
                if (txtnombre.Text.Trim().Length < 3)
                {
                    throw new Exception("El nombre debe tener más de 3 carácteres");
                }
                if (txtnombre.Text.Trim().Length > 20)
                {
                    throw new Exception("El nombre no puede tener más de 20 carácteres");
                }
                if (String.IsNullOrEmpty(TextApellido.Text))
                {
                    throw new Exception("La contraseña no puede estar vacío");
                }
                if (String.IsNullOrEmpty(TextCorreo.Text.Trim()))
                {
                    throw new Exception("El correo no puede ir vacío");
                }
                if (String.IsNullOrEmpty(TextNumber.Text))
                {
                    throw new Exception("El número no puede quedar vacío");
                }

                string name = txtnombre.Text;
                string pass = TextApellido.Text;
                string correos = TextCorreo.Text;
                string numeros = TextNumber.Text;

                client.modificarUsuario(rut, name, correos, pass, "1", empresa, numeros);

                System.Web.HttpContext.Current.Session["UserCorreo"] = correos;
                System.Web.HttpContext.Current.Session["UserNombre"] = name;
                System.Web.HttpContext.Current.Session["UserPass"] = pass;
                System.Web.HttpContext.Current.Session["UserTelefono"] = numeros;


                Response.Write("<script>alert('Datos modificados con exito');window.location = 'panel.aspx';</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        

    }

        protected void txtnombre_TextChanged(object sender, EventArgs e)
        {

        }
        public void limpiar()
        {
          
            TextCorreo.Text = "";
            txtnombre.Text = "";
            TextApellido.Text = "";
            TextNumber.Text = "";

        }
    }
}