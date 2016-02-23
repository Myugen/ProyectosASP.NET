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

        protected void ButtonRegistrar_Click(object sender, EventArgs e) {
            int empleadoID = Convert.ToInt32(Session["EmpleadoID"].ToString());
            int categoriaID = Convert.ToInt32(DropDownListCategoria.SelectedValue);
            int asuntoID = Convert.ToInt32(DropDownListIncidencia.SelectedValue);
            int statusID = 1; //Suponemos que siempre esta abierta la incidencia
            int puesto = TextBoxPuesto.Text == String.Empty ? 1 : Convert.ToInt32(TextBoxPuesto.Text);
            if (TextAreaDescripcion.Text == String.Empty) {
                LabelResultado.CssClass = "text-danger";
                LabelResultado.Text = "<span class='glyphicon glyphicon-info-sign'></span> Describa el problema.";
            }
            else {
                string descripcion = TextAreaDescripcion.Text;
                SqlConnection conexion = new SqlConnection(cadenaConexion);
                string insertIncidencia = "INSERT INTO Historial VALUES(@EmpleadoID, @Puesto, @CategoriaID, @AsuntoID, @Descripcion, @StatusID)";
                SqlCommand comandoInsertIncidencia = new SqlCommand(insertIncidencia, conexion);
                comandoInsertIncidencia.Parameters.Add("@EmpleadoID", SqlDbType.Int);
                comandoInsertIncidencia.Parameters["@EmpleadoID"].Value = empleadoID;
                comandoInsertIncidencia.Parameters.Add("@Puesto", SqlDbType.Int);
                comandoInsertIncidencia.Parameters["@Puesto"].Value = puesto;
                comandoInsertIncidencia.Parameters.Add("@CategoriaID", SqlDbType.Int);
                comandoInsertIncidencia.Parameters["@CategoriaID"].Value = categoriaID;
                comandoInsertIncidencia.Parameters.Add("@AsuntoID", SqlDbType.Int);
                comandoInsertIncidencia.Parameters["@AsuntoID"].Value = asuntoID;
                comandoInsertIncidencia.Parameters.Add("@Descripcion", SqlDbType.NChar, 50);
                comandoInsertIncidencia.Parameters["@Descripcion"].Value = descripcion;
                comandoInsertIncidencia.Parameters.Add("@StatusID", SqlDbType.Int);
                comandoInsertIncidencia.Parameters["@StatusID"].Value = statusID;
                try {
                    conexion.Open();
                    comandoInsertIncidencia.ExecuteNonQuery();
                    LabelResultado.CssClass = "text-success";
                    LabelResultado.Text = "<span class='glyphicon glyphicon-ok-sign'></span> Registro insertado";
                }
                catch (SqlException ex) {
                    Response.Write("Ha ocurrido un error en la insercion del registro: " + ex.Message);
                }
                finally {
                    conexion.Close();
                }
            }
        }
    }
}