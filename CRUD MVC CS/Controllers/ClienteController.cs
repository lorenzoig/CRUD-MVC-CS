using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CRUD_MVC_CS.Models;

namespace CRUD_MVC_CS.Controllers
{
    public class ClienteController : Controller
    {
        // GET: Cliente
        public ActionResult Index()
        {
            List<ClienteCLS> listaClientes = null;
            using (var bd = new BDPasajeEntities()) 
            {
                listaClientes = (from cliente in bd.Cliente
                                 where cliente.BHABILITADO == 1
                                 select new ClienteCLS
                                 {
                                     idCliente = cliente.IIDCLIENTE,
                                     nombre = cliente.NOMBRE,
                                     apellidoPaterno=cliente.APPATERNO,
                                     apellidoMaterno = cliente.APMATERNO,
                                     email = cliente.EMAIL,
                                     telefonoFijo=cliente.TELEFONOFIJO
                                 }).ToList();
            }
            return View(listaClientes);
        }
    }
}