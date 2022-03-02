using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EXAMENFINAL
{
    public partial class Propietario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
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
                /*if (DropDownList1.Items.Count <= 0)
                {
                    Button1.Visible = false;
                    Label1.Visible = false;
                    DropDownList1.Visible = false;
                    txtMsg.Text = "Debe Agregar un usuario primero";
                }*/
            }
            

        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("AgregarPropietario.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string url = "AgregarRegistro.aspx";
            url = string.Format("{0}?op={1}", url, DropDownList1.Text);
            Response.Redirect(url);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }
    }
}