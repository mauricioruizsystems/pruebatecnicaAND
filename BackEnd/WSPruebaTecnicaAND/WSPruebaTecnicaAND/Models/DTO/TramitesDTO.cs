using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WSPruebaTecnicaAND.Models.EF;

namespace WSPruebaTecnicaAND.Models.DTO
{
    public class TramitesDTO : RespuestaBase
    {
        public int id { get; set; }
        public string nombre { get; set; }
        public string entidad { get; set; }
        public bool disponiblelinea { get; set; }
        public bool concosto { get; set; }
        public string detalletramite {get;set;}
    }

    public class ListaTramites
    {
        public virtual ICollection<SP_LIST_TRAMITES_Result> Lista { get; set; }

        public ListaTramites()
        {
            Lista = new HashSet<SP_LIST_TRAMITES_Result>();
        }
    }

}