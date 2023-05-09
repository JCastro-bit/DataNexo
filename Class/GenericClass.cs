using MySql.Data.MySqlClient;
using System;
using System.Data;
using System.Text;
using System.Web.UI.WebControls;

namespace DataNexo.Class
{
    public class GenericClass
    {
        public static DataTable LoadUsuarios()
        {
            DatabaseConnector dbConnector = new DatabaseConnector();
            // Ejemplo de consulta SELECT
            string selectQuery = "SELECT idUsuario,tNombreUsuario, tUsuario, tFechaHoraAlta FROM tabla_usuarios";
            MySqlCommand cmd = new MySqlCommand(selectQuery);
            DataTable Usuarios = dbConnector.ExecuteQuery(cmd);

            return Usuarios;
        }

        //--- Muestra el año actual 
        public static void MostrarAnioEnCurso(Label lbl)
        {
            int currentYear = DateTime.Now.Year;
            lbl.Text = currentYear.ToString();
        }

        //--- Crea un mensaje de alerta utilizando SweetAlert. Recibe como parámetros un título, un mensaje y un tipo (que por defecto es vacío)   
        public static StringBuilder MessageBox(string titulo, string mensaje, string tTipo = "")
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("<script type = 'text/javascript'>");
            sb.Append("window.onload=function(){");
            sb.Append("Swal.fire('");
            sb.Append(titulo);
            sb.Append("', '");
            sb.Append(mensaje);
            sb.Append("', '");
            sb.Append(tTipo);
            sb.Append("')");
            sb.Append("};");
            sb.Append("</script>");
            return sb;
        }
    }
}