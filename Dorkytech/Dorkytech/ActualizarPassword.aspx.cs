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
    public partial class ActualizarPassword : System.Web.UI.Page {
        //Preparamos el string de conexión obtenido en el web.config
        string cadenaConexion = ConfigurationManager.ConnectionStrings["dorkitech"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void ButtonActualizarPassword_Click(object sender, EventArgs e) {
            int empleadoID = Convert.ToInt32(Session["EmpleadoID"]);
            string password = TextBoxPassword.Text.Trim();
            string updatePassword = "UPDATE Empleados SET Password = @Password WHERE EmpleadoID = @EmpleadoID";
            SqlConnection conexion = new SqlConnection(cadenaConexion);
            SqlCommand updateCommand = new SqlCommand(updatePassword, conexion);
            updateCommand.Parameters.Add("@Password", SqlDbType.NChar, 50);
            updateCommand.Parameters["@Password"].Value = password;
            updateCommand.Parameters.Add("@EmpleadoID", SqlDbType.Int);
            updateCommand.Parameters["@EmpleadoID"].Value = empleadoID;
            try {
                conexion.Open();
                updateCommand.ExecuteNonQuery();
                Label1.Text = "Contraseña actualizada correctamente";
            }
            catch (SqlException ex) {
                Response.Write("Ha ocurrido un error en la actualización del registro: " + ex.Message);
            }
            finally {
                conexion.Close();
            }
        }
    }
}