//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Servicios
{
    using System;
    using System.Collections.Generic;
    
    public partial class ASESORIA
    {
        public ASESORIA()
        {
            this.INTERACCION = new HashSet<INTERACCION>();
            this.LLAMADO = new HashSet<LLAMADO>();
            this.LOG_ACCIDENTE = new HashSet<LOG_ACCIDENTE>();
            this.LOG_FIZCALI = new HashSet<LOG_FIZCALI>();
            this.MEJORA = new HashSet<MEJORA>();
            this.VISITA = new HashSet<VISITA>();
        }
    
        public decimal ASES_ID { get; set; }
        public System.DateTime ASES_FECHA { get; set; }
        public System.DateTime ASES_HORA { get; set; }
        public string ASES_REALIZADA { get; set; }
        public string EMPRESA_EMP_RUT { get; set; }
        public string ASES_TIPO { get; set; }
    
        public virtual EMPRESA EMPRESA { get; set; }
        public virtual ICollection<INTERACCION> INTERACCION { get; set; }
        public virtual ICollection<LLAMADO> LLAMADO { get; set; }
        public virtual ICollection<LOG_ACCIDENTE> LOG_ACCIDENTE { get; set; }
        public virtual ICollection<LOG_FIZCALI> LOG_FIZCALI { get; set; }
        public virtual ICollection<MEJORA> MEJORA { get; set; }
        public virtual ICollection<VISITA> VISITA { get; set; }
    }
}
