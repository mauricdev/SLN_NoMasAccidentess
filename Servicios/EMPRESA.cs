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
    
    public partial class EMPRESA
    {
        public EMPRESA()
        {
            this.ACT_EMP = new HashSet<ACT_EMP>();
            this.ASESORIA = new HashSet<ASESORIA>();
            this.CAPACITACION = new HashSet<CAPACITACION>();
            this.CONTRATO = new HashSet<CONTRATO>();
            this.DETALL_RUBRO = new HashSet<DETALL_RUBRO>();
            this.MULTA = new HashSet<MULTA>();
            this.PAGO_EXTRA = new HashSet<PAGO_EXTRA>();
            this.PAGOS = new HashSet<PAGOS>();
            this.USUARIOEMPRESA = new HashSet<USUARIOEMPRESA>();
        }
    
        public string EMP_RUT { get; set; }
        public string EMP_DIRECC { get; set; }
        public string EMP_RAZONS { get; set; }
        public string EMP_ESTADO { get; set; }
        public decimal EMP_TRABAJADORES { get; set; }
        public string EMP_NOM { get; set; }
        public string EMP_TELEFONO { get; set; }
    
        public virtual ICollection<ACT_EMP> ACT_EMP { get; set; }
        public virtual ICollection<ASESORIA> ASESORIA { get; set; }
        public virtual ICollection<CAPACITACION> CAPACITACION { get; set; }
        public virtual ICollection<CONTRATO> CONTRATO { get; set; }
        public virtual ICollection<DETALL_RUBRO> DETALL_RUBRO { get; set; }
        public virtual ICollection<MULTA> MULTA { get; set; }
        public virtual ICollection<PAGO_EXTRA> PAGO_EXTRA { get; set; }
        public virtual ICollection<PAGOS> PAGOS { get; set; }
        public virtual ICollection<USUARIOEMPRESA> USUARIOEMPRESA { get; set; }
    }
}
