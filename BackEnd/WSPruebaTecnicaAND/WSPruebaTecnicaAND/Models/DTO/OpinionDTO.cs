using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WSPruebaTecnicaAND.Models.EF;

namespace WSPruebaTecnicaAND.Models.DTO
{
    public class OpinionDTO : RespuestaBase
    {
        public int id { get; set; }
        public int estado { get; set; }
        public string nombre { get; set; }
        public string entidad { get; set; }
    }

    public class ListaOpinion
    {
        public virtual ICollection<SP_LIST_OPINION_Result> Lista { get; set; }

        public ListaOpinion()
        {
            Lista = new HashSet<SP_LIST_OPINION_Result>();
        }
    }
}