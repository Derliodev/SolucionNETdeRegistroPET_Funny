using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EXAMENFINAL
{
    public partial class AgregarPropietario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
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
            }

        }

        private void limpiarControles()
        {
            txtRut.Text = string.Empty;
            txtNombresP.Text = string.Empty;
            txtApellidosP.Text = string.Empty;
            txtTelefono.Text = string.Empty;
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Propietario.aspx");
        }
    }
}