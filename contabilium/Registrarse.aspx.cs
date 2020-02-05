using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace contabilium
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        public void GuardarDatos(object sender, EventArgs e)
        {
            var nombre = campoNombre.Value.ToString();
            var apellido = campoApellido.Value.ToString();
            var email = campoEmail.Value.ToString();
            var password = campoPassword.Value.ToString();
           
            //Validacion
            if (Validacion(nombre,apellido,email,password))
            {
                using (var dbContext = new proyectoEntities1()) //conexion con la base de datos
                {
                    Usuario user = new Usuario(); //creo un usuario nuevo

                    user.Nombre = campoNombre.Value.ToString();
                    user.Apellido = campoApellido.Value.ToString();
                    user.Email = campoEmail.Value.ToString();
                    user.Password = Encriptacion.Encriptar(campoPassword.Value.ToString());

                    dbContext.Usuario.Add(user); //agrego el usuario a la tabla

                    dbContext.SaveChanges();
                }
                LimpiarCampos(); //dejo los campos nuevamente vacios

                Response.Redirect("TablaUsuarios.aspx");
            } else
            {
                MessageBox.Show("Error! no ingreso nada o ingreso espacios");
                Response.Redirect("Registrarse.aspx");
            }
        }
        protected void RestablecerDatos(object sender, EventArgs e)
        {
            LimpiarCampos();
        }

        public void LimpiarCampos()
        {
            campoNombre.Value = "";
            campoApellido.Value = "";
            campoEmail.Value = "";
            campoPassword.Value = "";
        }

        public bool Validacion(string nombre, string apellido, string email, string password)
        {
            if ((nombre == null || nombre == "") ||
                (apellido == null || apellido == "") ||
                (email == null || email == "") ||
                (password == null || password == ""))
                {
                MessageBox.Show("Error! complete los datos");
                Response.Redirect("Registrarse.aspx");
            }
                return true;
        }
    }
}