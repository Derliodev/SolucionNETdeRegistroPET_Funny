using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EXAMENFINAL
{
    public partial class Finalizando : System.Web.UI.Page
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

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }
    }
}