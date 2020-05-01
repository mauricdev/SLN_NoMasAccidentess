using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using LinqToDB;
using Servicios;
namespace biblioteca
{
    public class userEmpresa
    {
        private string uSER_RUT;

        public string USER_RUT
        {
            get { return uSER_RUT; }
            set { uSER_RUT = value; }
        }

        private string uSER_NOMBRE;

        public string USER_NOMBRE
        {
            get { return uSER_NOMBRE; }
            set { uSER_NOMBRE = value; }
        }


        private string uSER_CORREO;

        public string USER_CORREO
        {
            get { return uSER_CORREO; }
            set { uSER_CORREO = value; }
        }

        private string uSER_PASS;

        public string USER_PASS
        {
            get { return uSER_PASS; }
            set { uSER_PASS = value; }
        }

        private string uSER_ACTIVO;

        public string USER_ACTIVO
        {
            get { return uSER_ACTIVO; }
            set { uSER_ACTIVO = value; }
        }

        private string eMPRESA_EMP_RUT;

        public string EMPRESA_EMP_RUT
        {
            get { return eMPRESA_EMP_RUT; }
            set { eMPRESA_EMP_RUT = value; }
        }

        public userEmpresa(string uSER_RUT, string uSER_NOMBRE, string uSER_CORREO, string uSER_PASS, string uSER_ACTIVO, string eMPRESA_EMP_RUT)
        {
            USER_RUT = uSER_RUT;
            USER_NOMBRE = uSER_NOMBRE;
            USER_CORREO = uSER_CORREO;
            USER_PASS = uSER_PASS;
            USER_ACTIVO = uSER_ACTIVO;
            EMPRESA_EMP_RUT = eMPRESA_EMP_RUT;
        }

        public userEmpresa()
        {

        }

        public bool login(string usuario, string clave)
        {

            using (SqlConnection cn = new SqlConnection("DATA SOURCE=localhost:1521/xe;PASSWORD=duoc;USER ID=DUOC&quot;"))
            {
                cn.Open();

                SqlCommand cmd = new SqlCommand("SELECT user_rut,user_nombre,user_apellido,user_correo,QB_ENCRIPCION.FB_DESCENCRIPTAR(user_pass),user_estado FROM usuario_admin WHERE user_rut='" + usuario + "' AND user_pass = QB_ENCRIPCION.FB_ENCRIPTAR('" + clave + "') and user_estado ='1'", cn);
                SqlDataReader dr = cmd.ExecuteReader();
                return true;
            }
        }
    }
}
