using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using WSPruebaTecnicaAND.Models.DTO;
using WSPruebaTecnicaAND.Models.EF;
using System.Threading.Tasks;

using Newtonsoft.Json.Schema;

namespace WSPruebaTecnicaAND.Services
{
    public class PruebaTecnicaService
    {
        PruebaTecnicaANDEntities db = new PruebaTecnicaANDEntities();

        public async Task<ListaTramites> GetTramites()
        {
            ListaTramites respuesta = new ListaTramites();
            var lista = db.SP_LIST_TRAMITES().ToList();
            respuesta.Lista = lista;
            return respuesta;
        }
        public async Task<ListaOtrosTemas> GetOtrosTemas()
        {
            ListaOtrosTemas respuesta = new ListaOtrosTemas();
            var lista = db.SP_LIST_OTROSTEMAS().ToList();
            respuesta.Lista = lista;
            return respuesta;
        }

        public async Task<ListaOpinion> GetOpinion()
        {
            ListaOpinion respuesta = new ListaOpinion();
            var lista = db.SP_LIST_OPINION().ToList();
            respuesta.Lista = lista;
            return respuesta;
        }

        public async Task<ListaCuentanos> GetCuentanos()
        {
            ListaCuentanos respuesta = new ListaCuentanos();
            var lista = db.SP_LIST_CUENTANOS().ToList();
            respuesta.Lista = lista;
            return respuesta;
        }

        public CuentanosDTO addCuentanos(CuentanosDTO cuentanos)
        {
            CuentanosDTO respuesta = new CuentanosDTO();
            try
            {
                    Cuentanos c = new Cuentanos { idopinion = cuentanos.idopinion, descripcion = cuentanos.descripcion };

                    db.Cuentanos.Add(c);
                    db.SaveChanges();
                    respuesta.OperacionExitosa = true;

            }
            catch (Exception ex)
            {
                respuesta.Mensaje = "Error al Ingresar datos en Cuentanos -" + ex.ToString() + "-";
                respuesta.OperacionExitosa = false;
            }
            return respuesta;
        }

      
    }
}