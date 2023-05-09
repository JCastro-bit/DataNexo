using DataNexo.Class;
using MySql.Data.MySqlClient;
using System;
using System.Data;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DataNexo
{
    public partial class Registrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        public void LimpiarCampos()
        {
            // Limpia los campos del formulario
            txtNombreUsuario.Text = string.Empty;
            txtUsuario.Text = string.Empty;
            txtContrasena.Text = string.Empty;
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            DatabaseConnector dbConnector = new DatabaseConnector();
            // Aquí va el código para guardar el nuevo registro
            string tInsertarUsuario = "INSERT INTO tabla_usuarios (tNombreUsuario, tUsuario, tContrasena, tFechaHoraAlta) VALUES ('"
                                    + txtNombreUsuario.Text
                                    + "','"
                                    + txtUsuario.Text
                                    + "',"
                                    + "AES_ENCRYPT("
                                    + "'"
                                    + txtContrasena.Text
                                    + "'"
                                    + ", 'AES'),NOW());";

            dbConnector.ExecuteNonQuery(tInsertarUsuario);
            // Mostrar mensaje de éxito
            string titulo = "Registro exitoso";
            string mensaje = "El registro se ha guardado correctamente";
            string tTipo = "success";
            StringBuilder alertScript = GenericClass.MessageBox(titulo, mensaje, tTipo);

            // Registra el script en la página
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertScript", alertScript.ToString(), false);
            // Redireccionar a la página principal
            Response.Redirect("Consultar.aspx");
        }
    }
}
