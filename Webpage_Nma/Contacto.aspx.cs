using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

namespace Webpage_Nma
{
    public partial class Contacto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            divmas.Style["Visibility"] = "hidden";
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            try
            {
                if (String.IsNullOrEmpty(txtNombre.Text.Trim()))
                {
                    throw new Exception("El nombre no puede ir vacío");
                }
                if (txtNombre.Text.Trim().Length < 3)
                {
                    throw new Exception("El nombre debe tener más de 3 carácteres");
                }
                if (txtNombre.Text.Trim().Length > 20)
                {
                    throw new Exception("El nombre no puede tener más de 20 carácteres");
                }
                if (String.IsNullOrEmpty(txtCorreo.Text.Trim()))
                {
                    throw new Exception("El correo no puede ir vacío");
                }
                if (txtCorreo.Text.Trim().Length < 3)
                {
                    throw new Exception("El correo debe tener más de 3 carácteres");
                }
                if (txtCorreo.Text.Trim().Length > 50)
                {
                    throw new Exception("El correo no puede tener más de 20 carácteres");
                }
                if (String.IsNullOrEmpty(txtMensaje.Text.Trim()))
                {
                    throw new Exception("El mensaje no puede quedar vacío");
                }


                MailMessage correo = new MailMessage();
                correo.From = new MailAddress(txtCorreo.Text);
                correo.To.Add("empresasegurito@gmail.com");
                correo.Subject = "Formulario de contacto";
                correo.Body = "Nombre: " + txtNombre.Text + "\n" + "Correo contacto: " + txtCorreo.Text + "\n" + "Mensaje: " + txtMensaje.Text;
                correo.IsBodyHtml = false;
                correo.Priority = MailPriority.High;

                SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                smtp.Credentials = new NetworkCredential("empresasegurito@gmail.com", "clave123567");
                smtp.EnableSsl = true;

                smtp.Send(correo);
                Response.Write("<script>alert('Mensaje enviado con éxito!');window.location = 'index.aspx';</script>");
            }
            catch (Exception ex)
            {
                divmas.Style["Visibility"] = "visible";
                Label4.Text = (ex.Message);
            }



        }
    }
}