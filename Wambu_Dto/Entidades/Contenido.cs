using System;
using System.Collections.Generic;
using System.Text;

namespace Wambu_Dto.Entidades
{
    public class Contenido
    {
        public int Identificador { get; set; }
        public int IdContenido { get; set; }
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
        public string Imagen { get; set; }
        public Pagina IdPagina { get; set; }
    }
}
