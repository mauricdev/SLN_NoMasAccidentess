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
    
    public partial class ACTIV_PREVENTIVA
    {
        public ACTIV_PREVENTIVA()
        {
            this.ACT_EMP = new HashSet<ACT_EMP>();
        }
    
        public decimal ACTI_ID { get; set; }
        public string ACTI_DETALLE { get; set; }
        public string ACTI_TIPO { get; set; }
        public System.DateTime ACTI_FECHA { get; set; }
        public System.DateTime ACTI_HORA { get; set; }
        public string PROF_RUT { get; set; }
    
        public virtual ICollection<ACT_EMP> ACT_EMP { get; set; }
        public virtual PROFESIONAL PROFESIONAL { get; set; }
    }
}
