using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PetNegocio
{
    public class Alojamiento : IPersistente
    {
        public string rut { get; set; }
        public string nombreMascota { get; set; }
        public int idTMascota { get; set; }
        public int idTAlojamiento { get; set; }
        public DateTime fechaIngreso { get; set; }
        public int dias { get; set; }
        //public TipoAlojamiento tipoAlojamiento;
        //public TipoMascota tipoMascota;
        //public Propietario propietario;

        public Alojamiento()
        {
            this.Init();
        }

        private void Init()
        {
            rut = string.Empty;
            nombreMascota = string.Empty;
            idTMascota = 0;
            idTAlojamiento = 0;
            fechaIngreso = DateTime.Now;
            dias = 0;
        }

        public bool Create()
        {
            PetDAL.Alojamiento prop = new PetDAL.Alojamiento();
            try
            {
                prop.Rut = this.rut;
                prop.NombreMascota = this.nombreMascota;
                prop.IdTipoMascota = this.idTMascota;
                prop.IdTipoAlojamiento = this.idTAlojamiento;
                prop.FechaIngreso = this.fechaIngreso;
                prop.Dias = this.dias;

                CommonBC.Modelo.Alojamiento.Add(prop);
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
                PetDAL.Alojamiento prop = CommonBC.Modelo.Alojamiento.First(aloj => aloj.IdTipoAlojamiento == this.idTAlojamiento);
                this.rut = prop.Rut;
                this.nombreMascota = prop.NombreMascota;
                this.idTMascota = prop.IdTipoMascota;
                this.idTAlojamiento = prop.IdTipoAlojamiento;
                this.fechaIngreso = prop.FechaIngreso;
                this.dias = prop.Dias;
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
                PetDAL.Alojamiento prop = CommonBC.Modelo.Alojamiento.First(aloj => aloj.IdTipoAlojamiento == this.idTAlojamiento);
                prop.Rut = this.rut;
                prop.NombreMascota = this.nombreMascota;
                prop.IdTipoMascota = this.idTMascota;
                prop.IdTipoAlojamiento = this.idTAlojamiento;
                prop.FechaIngreso = this.fechaIngreso;
                prop.Dias = this.dias;

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
                PetDAL.Alojamiento prop = CommonBC.Modelo.Alojamiento.First(aloj => aloj.Rut == this.rut);
                CommonBC.Modelo.Alojamiento.Remove(prop);
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
