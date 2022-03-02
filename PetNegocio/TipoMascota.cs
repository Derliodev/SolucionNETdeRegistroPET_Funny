using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PetNegocio
{
    public class TipoMascota : IPersistente
    {
        public int idTMascota { get; set; }
        public string descripcion { get; set; }
        //public ICollection<Alojamiento> Alojamiento;
    

        public TipoMascota()
        {
            this.Init();
        }

        private void Init()
        {
            idTMascota = 0;
            descripcion = string.Empty;
        }


        public bool Create()
        {
            PetDAL.TipoMascota prop = new PetDAL.TipoMascota();
            try
            {
                prop.IdTipoMascota = this.idTMascota;
                prop.Descripcion = this.descripcion;
                //prop.Alojamiento = this.Alojamiento;

                CommonBC.Modelo.TipoMascota.Add(prop);
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
                PetDAL.TipoMascota prop = CommonBC.Modelo.TipoMascota.First(tmas => tmas.IdTipoMascota == this.idTMascota);
                this.idTMascota = prop.IdTipoMascota;
                this.descripcion = prop.Descripcion;
                //this.alojamiento = prop.alojamiento;
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
                PetDAL.TipoMascota prop = CommonBC.Modelo.TipoMascota.First(tmas => tmas.IdTipoMascota == this.idTMascota);
                prop.IdTipoMascota = this.idTMascota;
                prop.Descripcion = this.descripcion;
                //prop.Alojamiento = this.alojamiento;
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
                PetDAL.TipoMascota prop = CommonBC.Modelo.TipoMascota.First(tmas => tmas.IdTipoMascota == this.idTMascota);
                CommonBC.Modelo.TipoMascota.Remove(prop);
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
