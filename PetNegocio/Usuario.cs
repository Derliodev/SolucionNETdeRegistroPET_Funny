using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PetDAL;

namespace PetNegocio
{
    public class Usuario
    {
        public string usuario { get; set; }
        public string contrasenna { get; set; }
        public string Nombres { get; set; }
        public string Apellidos { get; set; }

        private PetFunnyEntities entidad;

        public Usuario()
        {
            entidad = new PetFunnyEntities();
        }

        public int Bucar()
        {
            int res = 0;
            PetDAL.Usuarios usuario = null;
            usuario = entidad.Usuarios.FirstOrDefault(a => a.UserName == this.usuario && a.Password == this.contrasenna);

            if (usuario != null)
            {
                this.usuario = usuario.UserName;
                this.Nombres = usuario.Nombres;
                this.Apellidos = usuario.Apellidos;
                res = 1;
            }
            else
            {
                res = 0;
            }

            return res;
        }

    }
}
