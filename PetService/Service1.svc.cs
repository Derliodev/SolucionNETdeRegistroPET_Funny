using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using PetNegocio;

namespace PetService
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "Service1" en el código, en svc y en el archivo de configuración.
    // NOTE: para iniciar el Cliente de prueba WCF para probar este servicio, seleccione Service1.svc o Service1.svc.cs en el Explorador de soluciones e inicie la depuración.
    public class Service1 : IService1
    {
        public Usuario Validar(string usuario, string contrasenna)
        {
            PetNegocio.Usuario user = new Usuario();
            user.usuario = usuario;
            user.contrasenna = contrasenna;
            

            if (user.Bucar() > 0)
            {
                return user;
            }
            else
            {
                return null;
            }

        }
    }
}
