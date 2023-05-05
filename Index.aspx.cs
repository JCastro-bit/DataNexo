using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using MySql.Data.MySqlClient;
using Org.BouncyCastle.Utilities.Collections;

namespace DataNexo
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            }
        }

        protected void btnInsert_OnClick(object sender, EventArgs e)
        {
            DatabaseConnector dbConnector = new DatabaseConnector();

            // Ejemplo de consulta INSERT
            string insertQuery = "INSERT INTO tabla_usuarios (tNombreUsuario, tUsuario, tContrasena, tFechaHoraAlta) VALUES ('admin', 'admin@email.com', aes_encrypt('contraseña123', 'AES'), NOW());";
            int affectedRows = dbConnector.ExecuteNonQuery(insertQuery);

            // Ejemplo de consulta SELECT
            string selectQuery = "SELECT tNombreUsuario, tUsuario, tFechaHoraAlta FROM tabla_usuarios";
            DataTable Usuarios = dbConnector.ExecuteQuery(selectQuery);

            // Llenar el GridView con el DataTable Usuarios
            GridViewUsuarios.DataSource = Usuarios;
            GridViewUsuarios.DataBind();

        }
    }
}


