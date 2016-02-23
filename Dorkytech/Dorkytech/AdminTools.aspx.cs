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
    public partial class AdminTools : System.Web.UI.Page {
        //Preparamos el string de conexión obtenido en el web.config
        string cadenaConexion = ConfigurationManager.ConnectionStrings["dorkitech"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e) {
            if(!Page.IsPostBack) {
                RellenarDropDownList();
            }
        }

        protected void DropDownListEmpleados_SelectedIndexChanged(object sender, EventArgs e) {
            DropDownList objeto = sender as DropDownList;
            SqlConnection conexion = new SqlConnection(cadenaConexion);
            string selectEmpleados = "SELECT Nombre, Username, Direccion, Ciudad, Estado, Postal, Telefono, Extension, TelfMobil FROM Empleados WHERE EmpleadoID = @EmpleadoID";
            SqlCommand consultaEmpleado = new SqlCommand(selectEmpleados, conexion);
            consultaEmpleado.Parameters.Add("@EmpleadoID", System.Data.SqlDbType.Int);
            consultaEmpleado.Parameters["@EmpleadoID"].Value = objeto.SelectedItem.Value;
            try {
                conexion.Open();
                SqlDataReader registroEmpleado = consultaEmpleado.ExecuteReader();
                if(registroEmpleado.Read()) {
                    TextBoxNombre.Enabled = true;
                    if(registroEmpleado["Nombre"] != null) {
                        TextBoxNombre.Text = registroEmpleado["Nombre"].ToString();
                    }
                    TextBoxUsuario.Enabled = true;
                    if(registroEmpleado["Username"] != null) { 
                        TextBoxUsuario.Text = registroEmpleado["Username"].ToString();
                    }
                    TextBoxDireccion.Enabled = true;
                    if(registroEmpleado["Direccion"] != null) {
                        TextBoxDireccion.Text = registroEmpleado["Direccion"].ToString();
                    }
                    TextBoxCiudad.Enabled = true;
                    if(registroEmpleado["Ciudad"] != null) {
                        TextBoxCiudad.Text = registroEmpleado["Ciudad"].ToString();
                    }
                    TextBoxEstado.Enabled = true;
                    if(registroEmpleado["Estado"] != null) {
                        TextBoxEstado.Text = registroEmpleado["Estado"].ToString();
                    }
                    TextBoxCodigoPostal.Enabled = true;
                    if(registroEmpleado["Postal"] != null) {
                        TextBoxCodigoPostal.Text = registroEmpleado["Postal"].ToString();
                    }
                    TextBoxTelefonoFijo.Enabled = true;
                    if(registroEmpleado["Telefono"] != null) {
                        TextBoxTelefonoFijo.Text = registroEmpleado["Telefono"].ToString();
                    }
                    TextBoxExtension.Enabled = true;
                    if(registroEmpleado["Extension"] != null) {
                        TextBoxExtension.Text = registroEmpleado["Extension"].ToString();
                    }
                    TextBoxTelefonoMovil.Enabled = true;
                    if(registroEmpleado["TelfMobil"] != null) {
                        TextBoxTelefonoMovil.Text = registroEmpleado["TelfMobil"].ToString();
                    }
                    ButtonActualizarEmpleado.Enabled = true;
                    ButtonBorrarEmpleado.Enabled = true;
                }
                registroEmpleado.Close();
            }
            catch (SqlException ex) {
                Response.Write("Ha ocurrido un error con la consulta del empleado: " + ex.Message);
            }
            finally {
                conexion.Close();
            }
        }

        protected void ButtonActualizarEmpleado_Click(object sender, EventArgs e) {
            string empleadoID = DropDownListEmpleados.SelectedItem.Value;
            SqlConnection conexion = new SqlConnection(cadenaConexion);
            string updateEmpleado = "UPDATE Empleados SET Nombre = @Nombre, Username = @Username, Direccion = @Direccion, Ciudad = @Ciudad, Estado = @Estado, Postal = @Postal, Telefono = @Telefono, Extension = @Extension, TelfMobil = @TelfMobil WHERE EmpleadoID = @EmpleadoID";
            SqlCommand comandoUpdateEmpleado = new SqlCommand(updateEmpleado, conexion);
            comandoUpdateEmpleado.Parameters.Add("@Nombre", SqlDbType.NVarChar, 50);
            comandoUpdateEmpleado.Parameters["@Nombre"].Value = TextBoxNombre.Text;
            comandoUpdateEmpleado.Parameters.Add("@Username", SqlDbType.NVarChar, 50);
            comandoUpdateEmpleado.Parameters["@Username"].Value = TextBoxUsuario.Text;
            comandoUpdateEmpleado.Parameters.Add("@Direccion", SqlDbType.NVarChar, 50);
            comandoUpdateEmpleado.Parameters["@Direccion"].Value = TextBoxDireccion.Text;
            comandoUpdateEmpleado.Parameters.Add("@Ciudad", SqlDbType.NVarChar, 50);
            comandoUpdateEmpleado.Parameters["@Ciudad"].Value = TextBoxCiudad.Text;
            comandoUpdateEmpleado.Parameters.Add("@Estado", SqlDbType.NVarChar, 50);
            comandoUpdateEmpleado.Parameters["@Estado"].Value = TextBoxEstado.Text;
            comandoUpdateEmpleado.Parameters.Add("@Postal", SqlDbType.NVarChar, 50);
            comandoUpdateEmpleado.Parameters["@Postal"].Value = TextBoxCodigoPostal.Text;
            comandoUpdateEmpleado.Parameters.Add("@Telefono", SqlDbType.NVarChar, 50);
            comandoUpdateEmpleado.Parameters["@Telefono"].Value = TextBoxTelefonoFijo.Text;
            comandoUpdateEmpleado.Parameters.Add("@Extension", SqlDbType.NVarChar, 50);
            comandoUpdateEmpleado.Parameters["@Extension"].Value = TextBoxExtension.Text;
            comandoUpdateEmpleado.Parameters.Add("@TelfMobil", SqlDbType.NVarChar, 50);
            comandoUpdateEmpleado.Parameters["@TelfMobil"].Value = TextBoxTelefonoMovil.Text;
            comandoUpdateEmpleado.Parameters.Add("@EmpleadoID", SqlDbType.Int);
            comandoUpdateEmpleado.Parameters["@EmpleadoID"].Value = empleadoID;
            try {
                conexion.Open();
                comandoUpdateEmpleado.ExecuteNonQuery();
                RellenarDropDownList();
                Response.Redirect(Request.RawUrl.ToString());
            }
            catch (SqlException ex) {
                Response.Write("Ha ocurrido un error en la actualización del registro: " + ex.Message);
            }
            finally {
                conexion.Close();
            }
        }

        protected void ButtonBorrarEmpleado_Click(object sender, EventArgs e) {
            string empleadoID = DropDownListEmpleados.SelectedItem.Value;
            SqlConnection conexion = new SqlConnection(cadenaConexion);
            string deleteEmpleado = "DELETE FROM Empleados WHERE EmpleadoID = @EmpleadoID";
            SqlCommand comandoDeleteEmpleado = new SqlCommand(deleteEmpleado, conexion);
            comandoDeleteEmpleado.Parameters.Add("@EmpleadoID", SqlDbType.Int);
            comandoDeleteEmpleado.Parameters["@EmpleadoID"].Value = empleadoID;
            try {
                conexion.Open();
                comandoDeleteEmpleado.ExecuteNonQuery();
                RellenarDropDownList();
                Response.Redirect(Request.RawUrl.ToString());
            }
            catch (SqlException ex) {
                Response.Write("Ha ocurrido un error en la eliminación del registro: " + ex.Message);
            }
            finally {
                conexion.Close();
            }
        }

        protected void RellenarDropDownList() {
            //Preparamos los strings de consulta
            string selectEmpleados = "SELECT EmpleadoID, Nombre FROM Empleados";
            //Realizamos la ejecución de la conexión y de los comandos
            //Conexión
            SqlConnection conexion = new SqlConnection(cadenaConexion);
            //Selects
            SqlDataAdapter consultaEmpleados = new SqlDataAdapter(selectEmpleados, conexion);
            try {
                conexion.Open();
                DataTable DataTableEmpleados = new DataTable();
                consultaEmpleados.Fill(DataTableEmpleados);
                DropDownListEmpleados.DataSource = DataTableEmpleados;
                DropDownListEmpleados.DataBind();
                DropDownListEmpleados.DataTextField = "Nombre";
                DropDownListEmpleados.DataValueField = "EmpleadoID";
                DropDownListEmpleados.DataBind();
            }
            catch(SqlException ex) {
                Response.Write("Ha ocurrido un error en la base de datos: " + ex.Message);
            }
            finally {
                conexion.Close();
            }
        }
    }
}