using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using Wambu_Dao.Gestion;
using Wambu_Dto.Entidades;
using static Wambu_Dao.ViewModelos.VMUsuario;

namespace Wambu_Dao.Modelo
{
    public class MUsuario : Conexion
    {

        public static int GestionUsuario(Usuario usuariop)
        {
            string contrasena = "";
            if (usuariop.Identificador == 1)
            {
                contrasena = Encriptacion.Encriptar(usuariop.Contrasena);
            }
            try
            {
                using (SqlConnection connection = ObtenerConecctionString())
                {
                    SqlCommand cmd = new SqlCommand("GestionUsuario", connection);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@identificador", SqlDbType.Int);
                    cmd.Parameters.Add("@idUsuario", SqlDbType.Int);
                    cmd.Parameters.Add("@email", SqlDbType.NVarChar);
                    cmd.Parameters.Add("@contrasena", SqlDbType.NVarChar);
                    cmd.Parameters.Add("@rol", SqlDbType.NVarChar);

                    cmd.Parameters.Add("@valor", SqlDbType.NVarChar, -1).Direction = ParameterDirection.Output;

                    cmd.Parameters["@identificador"].Value = usuariop.Identificador;
                    cmd.Parameters["@idUsuario"].Value = usuariop.IdUsuario;
                    cmd.Parameters["@email"].Value = usuariop.Email;
                    cmd.Parameters["@contrasena"].Value = contrasena;
                    cmd.Parameters["@rol"].Value = usuariop.Rol;

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
        public static Usuario iniciarSesion(Usuario usuario)
        {

            Usuario rsUsuario = new Usuario();
            try
            {
                using (SqlConnection connection = ObtenerConecctionString())
                {
                    connection.Open();
                    SqlCommand cmd = new SqlCommand("SELECT U.IdUsuario, U.Email, U.Rol FROM Usuario U WHERE U.Email = @Email AND U.Contrasena = @Contrasena AND Estado = 1", connection);
                    cmd.Parameters.AddWithValue("@Email", usuario.Email);
                    cmd.Parameters.AddWithValue("@Contrasena", Encriptacion.Encriptar(usuario.Contrasena));
                    SqlDataReader rdr = cmd.ExecuteReader();
                    while (rdr.Read())
                    {

                        rsUsuario.IdUsuario = Convert.ToInt32(rdr["IdUsuario"]);
                        rsUsuario.Email = rdr["Email"].ToString();
                        rsUsuario.Rol = rdr["Rol"].ToString();
                    }
                    rdr.Close();
                    return rsUsuario;
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

        public static List<Usuario> obtenerUsuarios()
        {

            List<Usuario> lstDatos = new List<Usuario>();

            Usuario rsUsuario;
            try
            {
                using (SqlConnection connection = ObtenerConecctionString())
                {
                    connection.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM Usuario", connection);
                    SqlDataReader rdr = cmd.ExecuteReader();
                    while (rdr.Read())
                    {

                        rsUsuario = new Usuario();

                        rsUsuario.IdUsuario = Convert.ToInt32(rdr["IdUsuario"]);
                        rsUsuario.Email = rdr["Email"].ToString();
                        rsUsuario.Rol = rdr["Rol"].ToString();
                        rsUsuario.Estado = Convert.ToInt32(rdr["Estado"]);

                        lstDatos.Add(rsUsuario);
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


        public static ResponseIntegration<Usuario> iniciarSesionVM(Usuario usuario)
        {
            var resultado = new ResponseIntegration<Usuario>();
            Usuario rsUsuario = new Usuario();

            try
            {
                if (string.IsNullOrEmpty(usuario.Email))
                {
                    resultado.Code = 204;
                    resultado.Message = "El correo electrónico no puede ser nulo o vacio";
                    resultado.Data = null;
                }else if (!Utilitarios.IsValidEmail(usuario.Email))
                {
                    resultado.Code = 204;
                    resultado.Message = "El correo electrónico no es correcto";
                    resultado.Data = null;
                }
                else if (string.IsNullOrEmpty(usuario.Contrasena))
                {
                    resultado.Code = 204;
                    resultado.Message = "La contraseña no puede ser nulo o vacio";
                    resultado.Data = null;
                }
                else
                {
                    using (SqlConnection connection = ObtenerConecctionString())
                    {
                        connection.Open();
                        SqlCommand cmd = new SqlCommand("SELECT U.IdUsuario, U.Email, U.Rol FROM Usuario U WHERE U.Email = @Email AND U.Contrasena = @Contrasena AND Estado = 1", connection);
                        cmd.Parameters.AddWithValue("@Email", usuario.Email);
                        cmd.Parameters.AddWithValue("@Contrasena", Encriptacion.Encriptar(usuario.Contrasena));
                        SqlDataReader rdr = cmd.ExecuteReader();
                        while (rdr.Read())
                        {

                            rsUsuario.IdUsuario = Convert.ToInt32(rdr["IdUsuario"]);
                            rsUsuario.Email = rdr["Email"].ToString();
                            rsUsuario.Rol = rdr["Rol"].ToString();
                        }
                        rdr.Close();

                        if (rsUsuario.IdUsuario == 0)
                        {
                            resultado.Code = 204;
                            resultado.Message = "Credenciales Incorrectas";
                            resultado.Data = null;
                        }
                        else
                        {
                            resultado.Code = 200;
                            resultado.Message = "Proceso Correcto";
                            resultado.Data = rsUsuario;
                        }

                        
                      
                    }
                }
                
            }
            catch (SqlException e)
            {
                Cerrar();
                resultado.Code = 500;
                resultado.Message = e.Message.ToString();
                resultado.Data = null;
            }
            finally
            {
                Cerrar();
            }

            return resultado;
        }

    }
}
