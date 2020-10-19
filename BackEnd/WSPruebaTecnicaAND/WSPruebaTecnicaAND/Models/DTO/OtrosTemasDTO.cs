using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WSPruebaTecnicaAND.Models.EF;

namespace WSPruebaTecnicaAND.Models.DTO
{
    public class OtrosTemasDTO : RespuestaBase
    {
        public int id { get; set; }
        public string titulo { get; set; }
        public string subtitulo { get; set; }
        public string enlace { get; set; }
        public string imagen { get; set; }
    }

    public class ListaOtrosTemas
    {
        public virtual ICollection<SP_LIST_OTROSTEMAS_Result> Lista { get; set; }

        public ListaOtrosTemas()
        {
            Lista = new HashSet<SP_LIST_OTROSTEMAS_Result>();
        }
    }
}