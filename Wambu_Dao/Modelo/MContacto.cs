using System;
using System.Collections.Generic;
using System.Net.Mail;
using System.Text;
using Wambu_Dto.Entidades;

namespace Wambu_Dao.Modelo
{
    public class MContacto
    {
        public static string enviaEmailContacto(Contacto correo)
        {
            string resultado = "0";

            MailMessage mensaje = new MailMessage();
            SmtpClient cliente = new SmtpClient("smtp.gmail.com");

            cliente.Host = "smtp.gmail.com";
            cliente.Port = Convert.ToInt32("587");
            cliente.EnableSsl = true;
            cliente.Timeout = 100000;

            mensaje.IsBodyHtml = true;
            mensaje.SubjectEncoding = System.Text.Encoding.UTF8;
            mensaje.BodyEncoding = System.Text.Encoding.UTF8;
            mensaje.Priority = MailPriority.Normal;

            string correos = "mariofpalomoausa@gmail.com";
            string[] lstCorreos = correos.Split(';');

            if (lstCorreos.Length > 1)
            {
                foreach (string dest in lstCorreos)
                {
                    mensaje.To.Add(dest);
                }
            }
            else
            {
                mensaje.To.Add("mariofpalomoausa@gmail.com");
            }

            mensaje.Subject = "INFORMACIÓN | " + correo.Nombre;
            mensaje.Body = "<b>Nombre: </b><span>" + correo.Nombre + "</span><br><b>Correo Electrónico: </b><span>" + correo.Email + "</span><br><b>Teléfono: </b><span>" + correo.Telefono + "</span><br><b>Mensaje: </b><span>" + correo.Mensaje + "</span><br>";
            mensaje.From = new MailAddress("payment01business@gmail.com");
            cliente.Credentials = new System.Net.NetworkCredential("payment01business@gmail.com", "Qw12345678");


            try
            {
                cliente.Send(mensaje);
                resultado = "1";
            }
            catch (SmtpException)
            {
                throw;

            }

            return resultado;
        }
    }
}
