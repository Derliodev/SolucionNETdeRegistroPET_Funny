using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PetNegocio
{
    public class TipoAlojamiento : IPersistente
    {
        public int idTAlojamiento { get; set; }
        public string descripcion { get; set; }
        //public IColection<Alojamiento> Alojamiento;


        public TipoAlojamiento()
        {
            this.Init();
        }

        private void Init()
        {
            idTAlojamiento = 0;
            descripcion = string.Empty;
        }

        public bool Create()
        {
            PetDAL.TipoAlojamiento prop = new PetDAL.TipoAlojamiento();
            try
            {
                this.idTAlojamiento = prop.IdTipoAlojamiento;
                this.descripcion = prop.Descripcion;
                //this.Alojamiento = prop.Alojamiento;

                CommonBC.Modelo.TipoAlojamiento.Add(prop);
                CommonBC.Modelo.SaveChanges();
                return true;
            }
            catch (Exception e)
            {
                CommonBC.Modelo.Entry(prop).State = System.Data.EntityState.Detached;
                return false;
            }

        }


        public bool Read()
        {
            try
            {
                PetDAL.TipoAlojamiento prop = CommonBC.Modelo.TipoAlojamiento.First(taloj => taloj.IdTipoAlojamiento == this.idTAlojamiento);
                this.idTAlojamiento = prop.IdTipoAlojamiento;
                this.descripcion = prop.Descripcion;
                //this.alojamiento = prop.alojamiento
                return true;
            }
            catch (Exception e)
            {
                return false;
            }
        }


        public bool Update()
        {
            try
            {
                PetDAL.TipoAlojamiento prop = CommonBC.Modelo.TipoAlojamiento.First(taloj => taloj.IdTipoAlojamiento == this.idTAlojamiento);
                prop.IdTipoAlojamiento = this.idTAlojamiento;
                prop.Descripcion = this.descripcion;
                //prop.alojamiento = this.alojamiento;
                CommonBC.Modelo.TipoAlojamiento.Add(prop);
                CommonBC.Modelo.SaveChanges();
                return true;
            }
            catch (Exception e)
            {
                return false;
            }
        }


        public bool Delete()
        {
            try
            {
                PetDAL.TipoAlojamiento prop = CommonBC.Modelo.TipoAlojamiento.First(taloj => taloj.IdTipoAlojamiento == this.idTAlojamiento);
                CommonBC.Modelo.TipoAlojamiento.Remove(prop);
                CommonBC.Modelo.SaveChanges();
                return true;
            }
            catch (Exception e)
            {
                return false;
            }
        }
    }
}
