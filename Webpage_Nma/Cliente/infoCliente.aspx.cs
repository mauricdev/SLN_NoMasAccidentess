using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Webpage_Nma.W_NMA;

namespace Webpage_Nma
{
    public partial class infoCliente : System.Web.UI.Page
    {

        W_NMA.Service1Client client = new W_NMA.Service1Client();
        List<ASESORIA> listadoAsesorias;

        protected void Page_Load(object sender, EventArgs e)
        {

            listadoAsesorias = new List<ASESORIA>();
            LLenarDatos();

        }

        protected void GriedView1List_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                int pID = Convert.ToInt32(e.CommandArgument);
                // either put ID in session and check 
                Session["ASES_ID"] = Convert.ToString(pID);
                Server.Transfer("test.aspx");
            }
        }


        private void LLenarDatos()
        {
            string rut = System.Web.HttpContext.Current.Session["EMPRESA_EMP_RUT"].ToString();
            foreach (var i in client.listarAsesorias(rut))
            {
                W_NMA.ASESORIA pro = new W_NMA.ASESORIA()
                {
                    
                    ASES_ID = int.Parse(i.ASES_ID.ToString()),
                    ASES_FECHA = DateTime.Parse(i.ASES_FECHA.ToString()),
                    //ASES_REALIZADA = i.ASES_REALIZADA.ToString(),
                    ASES_TIPO = i.ASES_TIPO.ToString(),
                };
                listadoAsesorias.Add(pro);
            }
            GridView1.DataSource = listadoAsesorias;
            GridView1.DataBind();
        }



        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged2(object sender, EventArgs e)
        {

        }

        protected void rowCancerEdit(object sender, GridViewCancelEditEventArgs e)
        {

        }

        protected void rowCancerEditEvent(object sender, GridViewCancelEditEventArgs e)
        {

        }

        protected void rowDeletingEvent(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void rowEditingEvent(object sender, GridViewEditEventArgs e)
        {

        }

        protected void rowUpdatingEvent(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged3(object sender, EventArgs e)
        {

        }

        
    }

}