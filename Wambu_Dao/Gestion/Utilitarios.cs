using System;
using System.Collections.Generic;
using System.Text;

namespace Wambu_Dao.Gestion
{
    public class Utilitarios
    {
        public static bool IsValidEmail(string email)
        {
            try
            {
                var addr = new System.Net.Mail.MailAddress(email);
                return addr.Address == email;
            }
            catch
            {
                return false;
            }
        }
    }
}
