using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Dorkytech {
    public partial class Historial : System.Web.UI.Page {
        //Preparamos el string de conexión obtenido en el web.config
        string cadenaConexion = ConfigurationManager.ConnectionStrings["dorkitech"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e) {
            //Preparamos los strings de consulta
            string selectIncidencias = "SELECT AsuntoID, Asunto FROM Incidencias";
            string selectCategorias = "SELECT CategoriaID, Categoria FROM Categorias";
            //Realizamos la ejecución de la conexión y de los comandos
            //Conexión
            SqlConnection conexion = new SqlConnection(cadenaConexion);
            //Selects
            SqlDataAdapter consultaCategoria = new SqlDataAdapter(selectCategorias, conexion);
            SqlDataAdapter consultaIncidencia = new SqlDataAdapter(selectIncidencias, conexion);
            try {
                conexion.Open();
                DataTable DataTableCategoria = new DataTable();
                consultaCategoria.Fill(DataTableCategoria);
                DropDownListCategoria.DataSource = DataTableCategoria;
                DropDownListCategoria.DataBind();
                DropDownListCategoria.DataTextField = "Categoria";
                DropDownListCategoria.DataValueField = "CategoriaID";
                DropDownListCategoria.DataBind();

                DataTable DataTableIncidencia = new DataTable();
                consultaIncidencia.Fill(DataTableIncidencia);
                DropDownListIncidencia.DataSource = DataTableIncidencia;
                DropDownListIncidencia.DataBind();
                DropDownListIncidencia.DataTextField = "Asunto";
                DropDownListIncidencia.DataValueField = "AsuntoID";
                DropDownListIncidencia.DataBind();
            }
            catch(SqlException ex) {
                Response.Write("Se ha producido un error en la base de datos:" + ex.Message);
            }
            finally {
                conexion.Close();
            }
        }
    }
}