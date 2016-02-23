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
    public partial class Direcciones : System.Web.UI.Page {
        //Preparamos el string de conexión obtenido en el web.config
        string cadenaConexion = ConfigurationManager.ConnectionStrings["dorkitech"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e) {
            string selectEmpleados = "SELECT EmpleadoID, Nombre, Ciudad, TelfMobil FROM Empleados";
            SqlConnection conexion = new SqlConnection(cadenaConexion);
            SqlDataAdapter consultaEmpleados = new SqlDataAdapter(selectEmpleados, conexion);
            try {
                conexion.Open();
                DataSet ds = new DataSet();
                consultaEmpleados.Fill(ds, "Empleados");
                GridViewDirecciones.DataSource = ds.Tables["Empleados"].DefaultView;
                GridViewDirecciones.DataBind();
                GridViewDirecciones.DataKeyNames = new string[] { "EmpleadoID" };
            }
            catch (SqlException ex) {
                Response.Write("Ha ocurrido un error en la consulta con la base de datos: " + ex.Message);
            }
            finally {
                conexion.Close();
            }
        }

        protected void GridViewDirecciones_SelectedIndexChanged(object sender, EventArgs e) {
            GridView grid = sender as GridView;
            int indiceFila = grid.SelectedIndex;
            string empleadoID = grid.DataKeys[indiceFila].Value.ToString();
            string selectDetalles = "SELECT EmpleadoID, Nombre, Direccion, Ciudad, Estado, Postal, Telefono, Extension FROM Empleados WHERE EmpleadoID = @EmpleadoID";
            SqlConnection conexion = new SqlConnection(cadenaConexion);
            SqlDataAdapter consultaDetalles = new SqlDataAdapter(selectDetalles, conexion);
            consultaDetalles.SelectCommand.Parameters.Add("@EmpleadoID", SqlDbType.Int);
            consultaDetalles.SelectCommand.Parameters["@EmpleadoID"].Value = empleadoID;
            try {
                conexion.Open();
                DataSet ds = new DataSet();
                consultaDetalles.Fill(ds, "Empleados");
                DetailsViewDetalles.DataSource = ds.Tables["Empleados"].DefaultView;
                DetailsViewDetalles.DataBind();
                DetailsViewDetalles.DataKeyNames = new string [] { "EmpleadoID"};
            }
            catch (SqlException ex) {
                Response.Write("Ha ocurrido un error en la consulta del empleado: " + ex.Message);
            }
            finally {
                conexion.Close();
            }
        }
    }
}