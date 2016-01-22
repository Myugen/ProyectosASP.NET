using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace ExamenASP {
    public partial class exm8_2 : System.Web.UI.Page {
        string cadenaConexion = "Server=localhost\\SQLEXPRESS;Database=Northwind;uid=admin;pwd=8admin8";
        protected void Page_Load(object sender, EventArgs e) {
            if(Cache["Empleados"] != null) {
                LiteralMensaje.Text = "Recogemos la información de la caché";
                DataTable tablaCache = Cache["Empleados"] as DataTable;
                DataGridEmpleados.DataSource = tablaCache;
                DataGridEmpleados.DataBind();
            }
            else {
                LiteralMensaje.Text = "Recogemos la información de la base de datos";
                string selectEmpleados = "SELECT FirstName, LastName, City FROM Employees";
                //Realizamos la ejecución de la conexión y de los comandos
                //Conexión
                SqlConnection conexion = new SqlConnection(cadenaConexion);
                //Select
                SqlDataAdapter consultaEmpleados = new SqlDataAdapter(selectEmpleados, conexion);
                try {
                    conexion.Open();
                    DataTable DataTableEmpleados = new DataTable();
                    consultaEmpleados.Fill(DataTableEmpleados);
                    DataGridEmpleados.DataSource = DataTableEmpleados;
                    DataGridEmpleados.DataBind();
                    Cache.Insert("Empleados", DataTableEmpleados, null, DateTime.MaxValue, TimeSpan.FromMinutes(1));
                }
                catch (SqlException ex) {
                    Response.Write("Ha ocurrido un error en la base de datos: " + ex.Message);
                }
                finally {
                    conexion.Close();
                }
            }
        }

        protected void ButtonRecargar_Click(object sender, EventArgs e) {
            Response.Redirect("~/exm8-2.aspx");
        }

        protected void LinkButtonEjercicio1_Click(object sender, EventArgs e) {
            Response.Redirect("~/exm8-1.aspx");
        }
    }
}