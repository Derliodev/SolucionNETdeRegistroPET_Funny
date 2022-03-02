using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PetNegocio
{
    public class Propietario : IPersistente
    {
        public string rut { get; set; }
        public string nombre { get; set; }
        public string apellidos { get; set; }
        public string telefono { get; set; }
        //public IColection<Alojamiento> Alojamiento;
    

        public Propietario()
        {
            this.Init();
        }

        private void Init()
        {
            rut = string.Empty;
            nombre = string.Empty;
            apellidos = string.Empty;
            telefono = string.Empty;
        }

        public bool Create()
        {
            PetDAL.Propietario prop = new PetDAL.Propietario();
            try
            {
                prop.Rut = this.rut;
                prop.Nombres = this.nombre;
                prop.Apellidos = this.apellidos;
                prop.Telefono = this.telefono;

                CommonBC.Modelo.Propietario.Add(prop);
                CommonBC.Modelo.SaveChanges();
                return true;
            }
            catch(Exception e)
            {
                CommonBC.Modelo.Entry(prop).State = System.Data.EntityState.Detached;
                return false;
            }
            
        }


        public bool Read()
        {
            
            try
            {
                PetDAL.Propietario prop = CommonBC.Modelo.Propietario.First(pro => pro.Rut == this.rut);
                this.rut = prop.Rut;
                this.nombre = prop.Nombres;
                this.apellidos = prop.Apellidos;
                this.telefono = prop.Telefono;

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
                PetDAL.Propietario prop = CommonBC.Modelo.Propietario.First(pro => pro.Rut == this.rut);
                prop.Rut = this.rut;
                prop.Nombres = this.nombre;
                prop.Apellidos = this.apellidos;
                prop.Telefono = this.telefono;

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
                PetDAL.Propietario prop = CommonBC.Modelo.Propietario.First(pro => pro.Rut == this.rut);
                CommonBC.Modelo.Propietario.Remove(prop);
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
