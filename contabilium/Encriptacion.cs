using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace contabilium
{
    public class Encriptacion
    {
        public static string Encriptar(String cadenaAencriptar)
        {
            string result = string.Empty;
            byte[] encryted = System.Text.Encoding.Unicode.GetBytes(cadenaAencriptar);
            result = Convert.ToBase64String(encryted);
            return result;
        }
    }
}