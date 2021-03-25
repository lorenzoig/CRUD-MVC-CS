using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CRUD_MVC_CS.Models
{
    public class MarcaCLS
    {
        [Display (Name ="Id Marca")]
        public int idMarca { get; set; }
        [Display(Name = "Nombre Marca")]
        [Required]
        [StringLength(100,ErrorMessage="La longitud máxima es 100.")]
        public string nombre { get; set; }
        [Display(Name = "Descripción Marca")]
        [Required (ErrorMessage="El campo descripción es requerido.")]
        [StringLength(200, ErrorMessage = "La longitud máxima es 200.")]
        public string descripcion { get; set; }
        [Display(Name = "Habilitado")]
        public int habilitado { get; set; }
    }
}