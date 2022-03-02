using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PetDAL;

namespace PetNegocio
{
   
    class CommonBC
    {
        private static PetFunnyEntities _modelo;

        public static PetFunnyEntities Modelo
        {
            get
            {
                if (_modelo == null)
                {
                    _modelo = new PetFunnyEntities();
                }
                return _modelo;
            }
        }

        public CommonBC()
        {

        }
    }
}
