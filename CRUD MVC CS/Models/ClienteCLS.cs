using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CRUD_MVC_CS.Models
{
    public class ClienteCLS
    {
        [Display (Name="Id Cliente")]
        public int idCliente { get; set; }
        [Display(Name = "Nombre")]
        public string nombre { get; set; }
        [Display(Name = "Apellido Paterno")]
        public string apellidoPaterno { get; set; }
        [Display(Name = "Apellido Materno")]
        public string apellidoMaterno { get; set; }
        [Display(Name = "Email")]
        public string email { get; set; }
        public string direccion { get; set; }
        public int idSexo { get; set; }
        [Display(Name = "TeléfonoFijo")]
        public string telefonoFijo { get; set; }
    }
}