using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PetNegocio
{
    public class Registros
    {
        string nombresU;
        string appellidoU;
        string nombreM;
        TipoMascota tMascota;
        TipoAlojamiento tAlojamiento;
        DateTime? fechaIngreso = null;
        DateTime? fechaTermino = null;

        public Registros()
        {
            this.Init();
        }

        private void Init()
        {
            nombresU = string.Empty;
            appellidoU = string.Empty;
            nombreM = string.Empty;
            tMascota = new TipoMascota();
            tAlojamiento = new TipoAlojamiento();
        }

    }
}
