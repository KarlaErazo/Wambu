using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using Wambu_Dao.Gestion;
using Wambu_Dto.Entidades;

namespace Wambu_Dao.Modelo
{
    public class MContenido : Conexion
    {

        public static int GestionContenido(Contenido contenidop)
        {

            try
            {
                using (SqlConnection connection = ObtenerConecctionString())
                {
                    SqlCommand cmd = new SqlCommand("GestionContenido", connection);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@identificador", SqlDbType.Int);
                    cmd.Parameters.Add("@idContenido", SqlDbType.Int);
                    cmd.Parameters.Add("@imagen", SqlDbType.NVarChar, -1);
                    cmd.Parameters.Add("@descripcion", SqlDbType.NVarChar);

                    cmd.Parameters.Add("@valor", SqlDbType.NVarChar, -1).Direction = ParameterDirection.Output;

                    cmd.Parameters["@identificador"].Value = contenidop.Identificador;
                    cmd.Parameters["@idContenido"].Value = contenidop.IdContenido;
                    cmd.Parameters["@imagen"].Value = contenidop.Imagen;
                    cmd.Parameters["@descripcion"].Value = contenidop.Descripcion;

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
        public static List<Contenido> obtenerContenido(int pagina)
        {

            List<Contenido> lstDatos = new List<Contenido>();

            Contenido rsContenido;
            try
            {
                using (SqlConnection connection = ObtenerConecctionString())
                {
                    connection.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM ObtenerContenidoPagina WHERE IdPagina = @pagina", connection);
                    cmd.Parameters.AddWithValue("@pagina", pagina);
                    SqlDataReader rdr = cmd.ExecuteReader();
                    while (rdr.Read())
                    {

                        rsContenido = new Contenido();

                        rsContenido.IdContenido = Convert.ToInt32(rdr["IdContenido"]);
                        rsContenido.Descripcion = rdr["Descripcion"].ToString();
                        rsContenido.Nombre = rdr["Nombre"].ToString();
                        rsContenido.Imagen = rdr["Imagen"].ToString();

                        lstDatos.Add(rsContenido);
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
