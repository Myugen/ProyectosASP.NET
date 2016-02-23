using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Dorkytech {
    public partial class Empleados : System.Web.UI.Page {
        //Preparamos el string de conexión obtenido en el web.config
        string cadenaConexion = ConfigurationManager.ConnectionStrings["dorkitech"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e) {
            //Preparamos el string de la consulta
            string selectEmpleados = "SELECT EmpleadoID, Nombre, Telefono FROM Empleados";
            //Realizamos la ejecución de la conexión y la consulta
            SqlConnection conexion = new SqlConnection(cadenaConexion);
            SqlDataAdapter consultaEmpleados = new SqlDataAdapter(selectEmpleados, conexion);
            try {
                conexion.Open();
                DataSet ds = new DataSet();
                consultaEmpleados.Fill(ds);
                DataListEmpleados.DataSource = ds;
                DataListEmpleados.DataBind();
            }
            catch (SqlException ex) {
                Response.Write("Se ha producido un error en la base de datos: " + ex.Message);
            }
            finally {
                conexion.Close();
            }
        }

        protected void DataListEmpleados_ItemCommand(object source, DataListCommandEventArgs e) {
            if(e.CommandName == "verDetalles") {
                string empleadoID = e.CommandArgument.ToString();
                int indice = e.Item.ItemIndex;
                DataListItem itemSeleccionado = DataListEmpleados.Items[indice];
                Literal l1 = itemSeleccionado.FindControl("Literal1") as Literal;
                l1.Visible = true;
                SqlConnection conexion = new SqlConnection(cadenaConexion);
                SqlCommand consultaTelefono = new SqlCommand ("SELECT TelfMobil FROM Empleados WHERE EmpleadoID = @EmpleadoID", conexion);
                consultaTelefono.Parameters.Add("@EmpleadoID", SqlDbType.Int);
                consultaTelefono.Parameters["@EmpleadoID"].Value = empleadoID;
                try {
                    conexion.Open();
                    SqlDataReader reader = consultaTelefono.ExecuteReader();
                    if(reader.Read()) {
                        l1.Text += "<strong>" + reader["TelfMobil"] + "</strong>";
                    }
                    reader.Close();
                }
                catch (SqlException ex) {
                    Response.Write("Ha ocurrido un error en la consulta: " + ex.Message);
                }
                finally {
                    conexion.Close();
                }
            }
        }
    }
}