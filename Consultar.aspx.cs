using DataNexo.Class;
using System;
using System.Data;
using System.Web.UI.WebControls;

namespace DataNexo
{
    public partial class Consultar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable Usuarios = GenericClass.LoadUsuarios();

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
    }
}