using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace contabilium
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { 
   
        }
        protected void IniciarSesion(object sender, EventArgs e)
        {
            String email = campoEmail.Value.ToString();
            var password = Encriptacion.Encriptar(campoPassword.Value.ToString());

            using (proyectoEntities1 dbContext = new proyectoEntities1()) //conexion con la base de datos
            {
                //la consulta te devuelve una fila
                var consultaEmail = from d in dbContext.Usuario where d.Email == email select d;
                var consultaPassword = from d in dbContext.Usuario where d.Password == password select d;

                if (consultaEmail.Count() > 0)
                {
                    if (consultaPassword.Count() > 0)
                    {
                        Session["usuario"] = "inicioSesion";
                        Response.Redirect("TablaUsuarios.aspx");
                    } else
                    {
                        MessageBox.Show("Contraseña incorrecta");
                    }
                }
                else
                {
                    MessageBox.Show("El usuario no existe, registrece para continuar");
                    Response.Redirect("Registrarse.aspx");
                }
            }

        }
    }
}