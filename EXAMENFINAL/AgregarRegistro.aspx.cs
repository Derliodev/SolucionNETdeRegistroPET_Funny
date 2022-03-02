using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PetNegocio;

namespace EXAMENFINAL
{
    public partial class AgregarRegistro : System.Web.UI.Page
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
                string dato = Request.Params["op"];
                if (dato == null)
                {
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Debe seleccionar un Propietario primero')", true);
                    }
                    ocultar();
                }
                else
                {
                    AgregarPro.Visible = false;
                    txtRut.Text = dato;
                    cargarPropietarioRut();
                }
            }
        }

        private PetNegocio.Propietario CargarRutBCDesdeUI()
        {
            PetNegocio.Propietario pro = new PetNegocio.Propietario() { rut = txtRut.Text };
            return pro;
        }

        private PetNegocio.Propietario CargarBCDesdeUI()
        {
            PetNegocio.Propietario pro = new PetNegocio.Propietario() {
                rut = txtRut.Text,
                nombre = txtNombresP.Text,
                apellidos = txtApellidosP.Text,
                telefono = txtTelefono.Text
            };
            return pro;
        }

        private void ocultar()
        {
            lbrut.Visible = false;
            txtRut.Visible = false;
            lbnombre.Visible = false;
            txtNombresP.Visible = false;
            lbapellido.Visible = false;
            txtApellidosP.Visible = false;
            lbtelefono.Visible = false;
            txtTelefono.Visible = false;


            lblNombreM.Visible = false;
            lblMascota.Visible = false;
            ddlMascota.Visible = false;
            txtNombreM.Visible = false;
            lblaloj.Visible = false;
            ddlAlojamiento.Visible = false;
            lbFecha.Visible = false;
            txtFechaI.Visible = false;
            lbDias.Visible = false;
            txtDias.Visible = false;
            lbMascota.Visible = false;
            AgregarReg.Visible = false;
        }

        private void CargarUIDesdeBC(PetNegocio.Propietario actual)
        {
            txtNombresP.Text = actual.nombre;
            txtApellidosP.Text = actual.apellidos;
            txtTelefono.Text = actual.telefono;
        }

        protected void LimpiarDatos()
        {
            txtRut.Text = string.Empty;
            txtNombresP.Text = string.Empty;
            txtApellidosP.Text = string.Empty;
            txtTelefono.Text = string.Empty;
        }

        protected void cargarPropietarioRut()
        {
            PetNegocio.Propietario propietario = CargarRutBCDesdeUI();
            if(propietario.Read())
            {
                CargarUIDesdeBC(propietario);
                //lbMensaje.Text = "Propietario Leido";
            }
            else
            {
                //lbMensaje.Text = "No se pudo cargar propietario";
            }

        }

        protected void grabarPropietario()
        {
            PetNegocio.Propietario propietario = CargarBCDesdeUI();
            if (propietario.Create())
            {

                lbMensaje.Text = "Propietario Agregado";
            }
            else
            {
                lbMensaje.Text = "No se pudo agregar propietario";
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Propietario.aspx");
        }

        protected void AgregarPro_Click(object sender, EventArgs e)
        {
            Response.Redirect("AgregarPropietario.aspx");
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            DateTime fechaIngresada = DateTime.Parse(args.Value);
            DateTime fechaMinima = DateTime.Today.AddMinutes(1);
            //DateTime fechaMaxima = DateTime.Today.AddMonths(1);

            if (fechaIngresada >= fechaMinima /*&& fechaIngresada <= fechaMaxima*/)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }
    }
}