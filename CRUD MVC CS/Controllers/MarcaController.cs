using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CRUD_MVC_CS.Models;

namespace CRUD_MVC_CS.Controllers
{
    public class MarcaController : Controller
    {
        // GET: Marca
        public ActionResult Index() //cada método que se agrega al controler es llamado  una Acción
        {
            List<MarcaCLS> listaMarca = null;
            using (var bd=new BDPasajeEntities())
            {
                listaMarca = (from marca in bd.Marca//recorre cada fila en la tabla de la BD
                                             select new MarcaCLS
                                             {
                                                 idMarca = marca.IIDMARCA,
                                                 nombre = marca.NOMBRE,
                                                 descripcion = marca.DESCRIPCION
                                             }).ToList();

            }
            return View(listaMarca);
        }
    }
}