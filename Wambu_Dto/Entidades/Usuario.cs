using System;
using System.Collections.Generic;
using System.Text;

namespace Wambu_Dto.Entidades
{
    public class Usuario
    {
        public int Identificador { get; set; }
        public int IdUsuario { get; set; }
        public string Email { get; set; }
        public string Contrasena { get; set; }
        public string Rol { get; set; }
        public int Estado { get; set; }
    }
}
