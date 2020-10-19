using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.Description;
using WSPruebaTecnicaAND.Models.DTO;
using WSPruebaTecnicaAND.Services;
using System.Net.Http;
using System.Net;
using System.Web.Configuration;
using System.IO;
using System.Web;
using System.Configuration;
using WSPruebaTecnicaAND.Models.EF;
using static WSPruebaTecnicaAND.Services.PruebaTecnicaService;

namespace WSPruebaTecnicaAND.Controllers
{
    [RoutePrefix("api/pruebatecnica")]

    public class PruebaTecnicaController  : ApiController
    {
    
    private PruebaTecnicaService srv;
            private string keyToken = "97221cdc42-8661-4ab9-a04e-51785baa88da39";
            public PruebaTecnicaController()
            {
                srv = new PruebaTecnicaService();
            }


            //Obtener Lista Tramites
            [Route("GetTramites")]
            [HttpGet]
            [ResponseType(typeof(ListaTramites))]
            public async Task<IHttpActionResult>   GetTramites(string token)
            {
                try
                {
                    if (token.Equals(keyToken))
                    {
                        var respuesta = srv.GetTramites();
                        return Ok(respuesta);
                    }
                    else
                        return null;
                }
                catch (Exception e)
                {
                    string error = "Error desde el servicio GetTramites" + e.Message;
                    return Ok(error);
                }

            }


            //Obtener Lista Otros Temas
            [Route("GetOtrosTemas")]
            [HttpGet]
            [ResponseType(typeof(ListaOtrosTemas))]
            public async Task<IHttpActionResult> GetOtrosTemas(string token)
            {
                try
                {
                    if (token.Equals(keyToken))
                    {
                        var respuesta = srv.GetOtrosTemas();
                        return Ok(respuesta);
                    }
                    else
                        return null;
                }
                catch (Exception e)
                {
                    string error = "Error desde el servicio GetOtrosTemas" + e.Message;
                    return Ok(error);
                }

            }


            //Obtener Lista Opiniones
            [Route("GetOpinion")]
            [HttpGet]
            [ResponseType(typeof(ListaOpinion))]
            public async Task<IHttpActionResult> GetOpinion(string token)
            {
                try
                {
                    if (token.Equals(keyToken))
                    {
                        var respuesta = srv.GetOpinion();
                        return Ok(respuesta);
                    }
                    else
                        return null;
                }
                catch (Exception e)
                {
                    string error = "Error desde el servicio GetOpinion" + e.Message;
                    return Ok(error);
                }

            }



            //Obtener Lista Cuentanos
            [Route("GetCuentanos")]
            [HttpGet]
            [ResponseType(typeof(CuentanosDTO))]
            public async Task<IHttpActionResult> GetCuentanos(string token)
            {
                try
                {
                    if (token.Equals(keyToken))
                    {
                        var respuesta = srv.GetCuentanos();
                        return Ok(respuesta);
                    }
                    else
                        return null;
                }
                catch (Exception e)
                {
                    string error = "Error desde el servicio GetTramites" + e.Message;
                    return Ok(error);
                }

            }


            [Route("addCuentanos")]
            [HttpPost]
            [ResponseType(typeof(RespuestaBase))]
            public IHttpActionResult addCuentanos(string token, CuentanosDTO cuentanos)
            {
                try
                {
                    if (token.Equals(keyToken))
                    {
                        var respuesta = srv.addCuentanos(cuentanos);
                        return Ok(respuesta);
                    }
                    else
                        return null;
                }
                catch (Exception e)
                {
                    string error = "Error desde el servicio addCuentanos" + e.Message;
                    return Ok(error);
                }
            }


        }
    }



    