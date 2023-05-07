using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Management;
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
                LoadUsuarios();
            }
        }

        private void LoadUsuarios()
        {
            DatabaseConnector dbConnector = new DatabaseConnector();
            // Ejemplo de consulta SELECT
            string selectQuery = "SELECT tNombreUsuario, tUsuario, tFechaHoraAlta FROM tabla_usuarios";
            MySqlCommand cmd = new MySqlCommand(selectQuery);
            DataTable Usuarios = dbConnector.ExecuteQuery(cmd);

            // Llenar el GridView con el DataTable Usuarios
            GridViewUsuarios.DataSource = Usuarios;
            GridViewUsuarios.DataBind();
        }
        // Genera la páginacion del GridView
        protected void GridViewUsuarios_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridViewUsuarios.PageIndex = e.NewPageIndex;
            GridViewUsuarios.DataBind();
        }
        protected void btnInsert_OnClick(object sender, EventArgs e)
        {

            DatabaseConnector dbConnector = new DatabaseConnector();

            // Ejemplo de consulta INSERT
            string insertQuery = "INSERT INTO tabla_usuarios (tNombreUsuario, tUsuario, tContrasena, tFechaHoraAlta) VALUES ('admin', 'admin@email.com', aes_encrypt('contraseña123', 'AES'), NOW());";
            MySqlCommand cmd = new MySqlCommand(insertQuery);
            DataTable Cargar = dbConnector.ExecuteQuery(cmd);

        }
    }
}


