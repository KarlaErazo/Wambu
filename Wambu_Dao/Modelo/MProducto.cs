using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using Wambu_Dao.Gestion;
using Wambu_Dto.Entidades;

namespace Wambu_Dao.Modelo
{
    public class MProducto : Conexion
    {

        public static int GestionProducto(Producto productop)
        {

            try
            {
                using (SqlConnection connection = ObtenerConecctionString())
                {
                    SqlCommand cmd = new SqlCommand("GestionProducto", connection);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@identificador", SqlDbType.Int);
                    cmd.Parameters.Add("@IdProducto", SqlDbType.Int);
                    cmd.Parameters.Add("@sku", SqlDbType.NVarChar, -1);
                    cmd.Parameters.Add("@Nombre", SqlDbType.NVarChar);
                    cmd.Parameters.Add("@Descripcion", SqlDbType.NVarChar, -1);
                    cmd.Parameters.Add("@Imagen", SqlDbType.NVarChar, -1);
                    cmd.Parameters.Add("@Precio", SqlDbType.Decimal);
                    cmd.Parameters.Add("@Tipo", SqlDbType.NVarChar);
                    cmd.Parameters.Add("@Estado", SqlDbType.Int);

                    cmd.Parameters.Add("@valor", SqlDbType.NVarChar, -1).Direction = ParameterDirection.Output;

                    cmd.Parameters["@identificador"].Value = productop.Identificador;
                    cmd.Parameters["@IdProducto"].Value = productop.IdProducto;
                    cmd.Parameters["@sku"].Value = productop.sku;
                    cmd.Parameters["@Nombre"].Value = productop.Nombre;
                    cmd.Parameters["@Descripcion"].Value = productop.Descripcion;
                    cmd.Parameters["@Imagen"].Value = productop.Imagen;
                    cmd.Parameters["@Precio"].Value = productop.Precio;
                    cmd.Parameters["@Tipo"].Value = productop.Tipo;
                    cmd.Parameters["@Estado"].Value = productop.Estado;

                    cmd.Connection.Open();
                    cmd.ExecuteNonQuery();

                    return Convert.ToInt32(cmd.Parameters["@valor"].Value);
                }

            }
            catch (SqlException)
            {
                Cerrar();
                throw;
            }
            finally
            {
                Cerrar();
            }
        }

        public static Producto obtenerProducto(int idproducto)
        {

            Producto rsProducto = new Producto();
            try
            {
                using (SqlConnection connection = ObtenerConecctionString())
                {
                    connection.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM Producto WHERE IdProducto = @idproducto AND Estado = 1", connection);
                    cmd.Parameters.AddWithValue("@idproducto", idproducto);
                    SqlDataReader rdr = cmd.ExecuteReader();
                    while (rdr.Read())
                    {

                        rsProducto.IdProducto = Convert.ToInt32(rdr["IdProducto"]);
                        rsProducto.sku = rdr["sku"].ToString();
                        rsProducto.Nombre = rdr["Nombre"].ToString();
                        rsProducto.Descripcion = rdr["Descripcion"].ToString();
                        rsProducto.Imagen = rdr["Imagen"].ToString();
                        rsProducto.Precio = Convert.ToDecimal(rdr["Precio"]);
                        rsProducto.Tipo = rdr["Tipo"].ToString();

                    }
                    rdr.Close();
                    return rsProducto;
                }
            }
            catch (SqlException)
            {
                Cerrar();
                throw;
            }
            finally
            {
                Cerrar();
            }
        }

        public static List<Producto> obtenerProductos()
        {

            List<Producto> lstDatos = new List<Producto>();

            Producto rsProducto;
            try
            {
                using (SqlConnection connection = ObtenerConecctionString())
                {
                    connection.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM Producto WHERE Estado = 1", connection);
                    SqlDataReader rdr = cmd.ExecuteReader();
                    while (rdr.Read())
                    {

                        rsProducto = new Producto();

                        rsProducto.IdProducto = Convert.ToInt32(rdr["IdProducto"]);
                        rsProducto.sku = rdr["sku"].ToString();
                        rsProducto.Nombre = rdr["Nombre"].ToString();
                        rsProducto.Descripcion = rdr["Descripcion"].ToString();
                        rsProducto.Imagen = rdr["Imagen"].ToString();
                        rsProducto.Precio = Convert.ToDecimal(rdr["Precio"]);
                        rsProducto.Tipo = rdr["Tipo"].ToString();

                        lstDatos.Add(rsProducto);
                    }
                    rdr.Close();
                    return lstDatos;
                }
            }
            catch (SqlException)
            {
                Cerrar();
                throw;
            }
            finally
            {
                Cerrar();
            }
        }

        public static List<Producto> obtenerProductosValorados()
        {

            List<Producto> lstDatos = new List<Producto>();

            Producto rsProducto;
            try
            {
                using (SqlConnection connection = ObtenerConecctionString())
                {
                    connection.Open();
                    SqlCommand cmd = new SqlCommand("SELECT TOP 6 * FROM Producto WHERE Estado = 1 ORDER BY NEWID()", connection);
                    SqlDataReader rdr = cmd.ExecuteReader();
                    while (rdr.Read())
                    {

                        rsProducto = new Producto();

                        rsProducto.IdProducto = Convert.ToInt32(rdr["IdProducto"]);
                        rsProducto.sku = rdr["sku"].ToString();
                        rsProducto.Nombre = rdr["Nombre"].ToString();
                        rsProducto.Descripcion = rdr["Descripcion"].ToString();
                        rsProducto.Imagen = rdr["Imagen"].ToString();
                        rsProducto.Precio = Convert.ToDecimal(rdr["Precio"]);
                        rsProducto.Tipo = rdr["Tipo"].ToString();

                        lstDatos.Add(rsProducto);
                    }
                    rdr.Close();
                    return lstDatos;
                }
            }
            catch (SqlException)
            {
                Cerrar();
                throw;
            }
            finally
            {
                Cerrar();
            }
        }
    }
}
