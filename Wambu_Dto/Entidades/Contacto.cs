using System;
using System.Collections.Generic;
using System.Text;

namespace Wambu_Dto.Entidades
{
    public class Contacto
    {
        public int IdContacto { get; set; }
        public string Nombre { get; set; }
        public string Email { get; set; }
        public string Telefono { get; set; }
        public string Mensaje { get; set; }
    }
}
