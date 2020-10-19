using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WSPruebaTecnicaAND.Models.EF;

namespace WSPruebaTecnicaAND.Models.DTO
{
    public class CuentanosDTO : RespuestaBase
    {
        public int id { get; set; }
        public int idopinion {get;set;}
        public string descripcion { get; set; }

    }

    public class ListaCuentanos
    {
        public virtual ICollection<SP_LIST_CUENTANOS_Result> Lista { get; set; }

        public ListaCuentanos()
        {
            Lista = new HashSet<SP_LIST_CUENTANOS_Result>();
        }
    }
}