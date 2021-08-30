using System;
using System.Collections.Generic;
using System.Text;

namespace Wambu_Dto.Entidades
{
    public class Producto
    {
        public int Identificador { get; set; }
        public int IdProducto { get; set; }
        public string sku { get; set; }
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
        public string Imagen { get; set; }
        public decimal Precio { get; set; }
        public string Tipo { get; set; }
        public int Estado { get; set; }
    }
}
