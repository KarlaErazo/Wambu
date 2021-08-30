using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace Wambu_Dao.Gestion
{
    public class Conexion
    {
        public static SqlConnection cnn;


        public static SqlConnection ObtenerConecctionString()
        {

            cnn = new SqlConnection("Data Source=UIOPALOMO\\SQLEXPRESS01;Initial Catalog=Wambu;User ID=sa;Password=123;");

            return cnn;

        }

        public static void Cerrar()
        {
            if (cnn != null)
            {
                if (cnn.State == ConnectionState.Open)
                {
                    cnn.Close();
                }
            }
        }
    }
}
