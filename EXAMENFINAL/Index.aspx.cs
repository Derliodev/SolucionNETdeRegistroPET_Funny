using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EXAMENFINAL
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string dato = Request.Params["accion"];
                if (dato == "out")
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Ha cerrado session, adios ;)!')", true);
                }
                else
                {
                    if (Session["Usuario"] != null)
                    {
                        Response.Redirect("Inicio.aspx");
                    }
                    else
                    {
                        PerServicioAUTH.Usuario user;
                        user = (PerServicioAUTH.Usuario)Session["Usuario"];
                    }
                }

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            PerServicioAUTH.Service1Client cli = new PerServicioAUTH.Service1Client();
            PerServicioAUTH.Usuario user = cli.Validar(txtId.Text, txtPass.Text);

            if (user != null)
            {
                Session["Usuario"] = user;
                Response.Redirect("/Inicio.aspx");
            }
            else
            {
                lblMensaje.Text = "El usuario no existe o no fue encontrado";
            }

        }
    }
}


