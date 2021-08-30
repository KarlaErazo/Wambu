using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Wambu_Dao.Modelo;
using Wambu_Dto.Entidades;

namespace Wambu.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class DatosController : ControllerBase
    {
        [HttpGet]
        [Route("obtenerContenido")]
        public List<Contenido> obtenerContenido(int pagina)
        {
            return MContenido.obtenerContenido(pagina);
        }

        [HttpPost]
        [Route("gestionContenido")]
        public int GestionContenido(Contenido contenido)
        {
            return MContenido.GestionContenido(contenido);
        }

       

        [HttpPost]
        [Route("enviaEmailContacto")]
        public string enviaEmailContacto(Contacto correo)
        {
            return MContacto.enviaEmailContacto(correo);
        }

        [HttpGet]
        [Route("obtenerProducto")]
        public Producto obtenerProducto(int idproducto)
        {
            return MProducto.obtenerProducto(idproducto);
        }

        [HttpGet]
        [Route("obtenerProductos")]
        public List<Producto> obtenerProductos()
        {
            return MProducto.obtenerProductos();
        }


        [HttpGet]
        [Route("obtenerProductosValorados")]
        public List<Producto> obtenerProductosValorados()
        {
            return MProducto.obtenerProductosValorados();
        }

        [HttpPost]
        [Route("gestionUsuario")]
        public int GestionUsuario(Usuario usuario)
        {
            return MUsuario.GestionUsuario(usuario);
        }

        [HttpPost]
        [Route("iniciarSesion")]
        public Usuario iniciarSesion(Usuario usuario)
        {
            return MUsuario.iniciarSesion(usuario);
        }


        [HttpPost]
        [Route("gestionProducto")]
        public int GestionProducto(Producto producto)
        {
            return MProducto.GestionProducto(producto);
        }


        [Route("obtenerUsuarios")]
        public List<Usuario> obtenerUsuarios()
        {
            return MUsuario.obtenerUsuarios();
        }
        


    }
}
