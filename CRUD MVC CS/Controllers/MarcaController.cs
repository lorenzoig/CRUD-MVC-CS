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
        public ActionResult Index()
        {
            using (var bd=new BDPasajeEntities())
            {

            }
            return View();
        }
    }
}