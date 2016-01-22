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
            string selectEmpleados = "SELECT EmpleadoID, Nombre, Username FROM Empleados";
            //Realizamos la ejecución de la conexión y la consulta
            SqlConnection conexion = new SqlConnection(cadenaConexion);
            SqlCommand consultaEmpleados = new SqlCommand(selectEmpleados, conexion);
            try {
                conexion.Open();
                SqlDataReader readerEmpleados = consultaEmpleados.ExecuteReader();
                Table tablaEmpleados = new Table();
                TableRow filaCabecera = new TableRow();
                TableHeaderCell columnaEmpleadoIDCabecera = new TableHeaderCell();
                columnaEmpleadoIDCabecera.Text = "ID Empleado";
                TableHeaderCell columnaNombreCabecera = new TableHeaderCell();
                columnaNombreCabecera.Text = "Nombre";
                TableHeaderCell columnaUsuarioCabecera = new TableHeaderCell();
                columnaUsuarioCabecera.Text = "Usuario";
                filaCabecera.Cells.Add(columnaEmpleadoIDCabecera);
                filaCabecera.Cells.Add(columnaNombreCabecera);
                filaCabecera.Cells.Add(columnaUsuarioCabecera);
                tablaEmpleados.Rows.Add(filaCabecera);
                while(readerEmpleados.Read()) {
                    TableRow nuevaFila = new TableRow();
                    TableCell columnaEmpleadoID = new TableCell();
                    columnaEmpleadoID.Text = readerEmpleados["EmpleadoID"].ToString();
                    TableCell columnaNombre = new TableCell();
                    columnaNombre.Text = readerEmpleados["Nombre"].ToString();
                    TableCell columnaUsername = new TableCell();
                    columnaUsername.Text = readerEmpleados["Username"].ToString();
                    nuevaFila.Cells.Add(columnaEmpleadoID);
                    nuevaFila.Cells.Add(columnaNombre);
                    nuevaFila.Cells.Add(columnaUsername);
                    tablaEmpleados.Rows.Add(nuevaFila);
                }
                ContentPlaceHolder contenido = Page.Master.FindControl("ContentPlaceHolder1") as ContentPlaceHolder;
                contenido.Controls.Add(tablaEmpleados);
            }
            catch (SqlException ex) {
                Response.Write("Se ha producido un error en la base de datos: " + ex.Message);
            }
            finally {
                conexion.Close();
            }
        }
    }
}