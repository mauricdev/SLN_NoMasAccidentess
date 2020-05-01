
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webpage_Nma
{
    public partial class login : System.Web.UI.Page
    {
     
        W_NMA.Service1Client client = new W_NMA.Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

        }

        protected void txtnombre_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            string Rut = txtRut.Text;
            string pass = txtClave.Text;

            if (string.IsNullOrEmpty(Rut))
            {
                Response.Write("<script>alert('Rut no Puede estar nulo');</script>");
            }
            else
            {
                if (string.IsNullOrEmpty(pass))
                {
                    Response.Write("<script>alert('Contraseña no Puede estar nulo');</script>");
                }
                else
                {
                    if (client.validarRut(Rut) == false)
                    {

                        Response.Write("<script>alert('Debe ingresar un rut valido');</script>");
                    }
                    else
                    {
                        if (client.login(Rut, pass).Length > 0)
                        {
                            foreach (var i in client.login(Rut, pass))
                            {
                                W_NMA.USUARIOEMPRESA emp = new W_NMA.USUARIOEMPRESA()
                                {
                                    USER_RUT = i.USER_RUT.ToString(),
                                    USER_NOMBRE = i.USER_NOMBRE.ToString(),
                                    USER_CORREO = i.USER_CORREO.ToString(),
                                    USER_PASS = i.USER_PASS.ToString(),
                                    USER_ACTIVO = i.USER_ACTIVO.ToString(),
                                    EMPRESA_EMP_RUT = i.EMPRESA_EMP_RUT.ToString(),
                                    USER_ROL = i.USER_ROL.ToString(),
                                    USER_TELEFONO = i.USER_TELEFONO.ToString(),
                                };

                                string rol = emp.USER_ROL;
                                string rut = emp.USER_RUT;
                                string correo = emp.USER_CORREO;
                                string nombre = emp.USER_NOMBRE;
                                string passw = emp.USER_PASS;
                                string telefono = emp.USER_TELEFONO;
                                string empresa = emp.EMPRESA_EMP_RUT;
                                if (rol.Equals("Profesional"))
                                {
                                    Response.Write("<script>alert('Funciono conchetumare');window.location = 'profesionales/panelProfesional.aspx';</script>");


                                    System.Web.HttpContext.Current.Session["UserRut"] = rut;
                                    System.Web.HttpContext.Current.Session["UserCorreo"] = correo;
                                    System.Web.HttpContext.Current.Session["UserNombre"] = nombre;
                                    System.Web.HttpContext.Current.Session["UserPass"] = passw;
                                    System.Web.HttpContext.Current.Session["UserTelefono"] = telefono;
                                    System.Web.HttpContext.Current.Session["EMPRESA_EMP_RUT"] = empresa;


                                }
                                else
                                {
                                    if (rol.Equals("Usuario"))
                                    {

                                        System.Web.HttpContext.Current.Session["UserRut"] = rut;
                                        System.Web.HttpContext.Current.Session["UserCorreo"] = correo;
                                        System.Web.HttpContext.Current.Session["UserNombre"] = nombre;
                                        System.Web.HttpContext.Current.Session["UserPass"] = passw;
                                        System.Web.HttpContext.Current.Session["UserTelefono"] = telefono;
                                        System.Web.HttpContext.Current.Session["EMPRESA_EMP_RUT"] = empresa;
                                        Response.Write("<script>alert('Funciono conchetumare');window.location = 'Cliente/panel.aspx';</script>");
                                    }
                                }
                            }
                        }
                        else
                        {
                            Response.Write("<script>alert('Rut no existe o se encuentra inactivo');window.location = 'login.aspx';</script>");
                        }
                    }

                }
            }

        }
    }
}