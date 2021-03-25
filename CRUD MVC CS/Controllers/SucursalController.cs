using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CRUD_MVC_CS.Models;

namespace CRUD_MVC_CS.Controllers
{
    public class SucursalController : Controller
    {
        // GET: Sucursal
        public ActionResult Index()
        {
            List<SucursalCLS> listaSucursal=null;
            using (var bd= new BDPasajeEntities())
            {
                //obtener solo las sucursales habilitadas
                listaSucursal = (from sucursal in bd.Sucursal
                                 where sucursal.BHABILITADO ==1
                                select new SucursalCLS
                                {
                                    idSucursal = sucursal.IIDSUCURSAL,
                                    nombre = sucursal.NOMBRE,
                                    telefono=sucursal.TELEFONO,
                                    email=sucursal.EMAIL
                                }).ToList();
            }
            return View(listaSucursal);
        }
    }
}