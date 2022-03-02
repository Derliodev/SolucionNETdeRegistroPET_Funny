using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PetNegocio;

namespace EXAMENFINAL
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

            }
            if (Session["Usuario"] == null)
            {
                Response.Redirect("Index.aspx");
            }
            else
            {
                PerServicioAUTH.Usuario user;
                user = (PerServicioAUTH.Usuario)Session["Usuario"];

                saludo.Text = "Bienvenid@ " + user.Nombres + " " + user.Apellidos;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("/Index.aspx?accion=out");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registros.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Propietario.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Finalizando.aspx");
        }
    }
}