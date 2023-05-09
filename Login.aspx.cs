using MySql.Data.MySqlClient;
using System;
using System.Data;

namespace DataNexo
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void LimpiarCampos()
        {
            txtCorreo.Text = string.Empty;
            txtContrasena.Text = string.Empty;
        }

        protected void btnIngresar_OnClick(object sender, EventArgs e)
        {
            DatabaseConnector dbConnector = new DatabaseConnector();

            // Validar que los campos no estén vacíos
            if (txtCorreo.Text != "" && txtContrasena.Text != "")
            {

                // Consultar si las credenciales de usuario coinciden en la base de datos
                string selectQuery = "SELECT tNombreUsuario, tUsuario FROM tabla_usuarios WHERE tUsuario = '"
                    + txtCorreo.Text
                    + "' AND tContrasena = AES_ENCRYPT('"
                    + txtContrasena.Text
                    + "', 'AES')";

                MySqlCommand cmd = new MySqlCommand(selectQuery);
                DataTable Usuarios = dbConnector.ExecuteQuery(cmd);

                // Validar que el usuario y contraseña sean correctos
                if (Usuarios.Rows.Count > 0)
                {
                    // Redireccionar a la página principal
                    Response.Redirect("Index.aspx");
                }
                else
                {
                    // Mostrar mensaje de error
                    lblMensaje.Text = "Usuario o contraseña incorrectos";
                    LimpiarCampos();
                }
            }
            else
            {
                // Mostrar mensaje de error
                lblMensaje.Text = "Por favor ingrese su usuario y contraseña";
                LimpiarCampos();
            }
        }

    }
}