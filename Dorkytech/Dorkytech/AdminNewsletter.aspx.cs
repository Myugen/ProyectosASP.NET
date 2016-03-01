using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Net.Mail;

namespace Dorkytech {
    public partial class AdminNewsletter : System.Web.UI.Page {
        //Preparamos el string de conexión obtenido en el web.config
        string cadenaConexion = ConfigurationManager.ConnectionStrings["dorkitech"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void Button1_Click(object sender, EventArgs e) {
            int empleadoId = Convert.ToInt32(Session["EmpleadoID"].ToString());
            string from = "";

            string selectEmailAdmin = "SELECT Email FROM Empleados WHERE EmpleadoID = @EmpleadoID";
            string selectOtrosEmails = "SELECT Email FROM Empleados";

            SqlConnection conexion = new SqlConnection(cadenaConexion);
            SqlCommand selectCommandEmailAdmin = new SqlCommand(selectEmailAdmin, conexion);
            selectCommandEmailAdmin.Parameters.Add("@EmpleadoID", SqlDbType.Int);
            selectCommandEmailAdmin.Parameters["@EmpleadoID"].Value = empleadoId;
            SqlCommand selectCommandOtrosEmails = new SqlCommand(selectOtrosEmails, conexion);
            try {
                conexion.Open();

                MailMessage email = new MailMessage();
                email.Subject = TextBoxSubject.Text;
                email.Body = TextBoxMessage.Text;
                email.IsBodyHtml = true;

                SqlDataReader readerEmailAdmin = selectCommandEmailAdmin.ExecuteReader();
                if (readerEmailAdmin.HasRows) {
                    while(readerEmailAdmin.Read()) {
                        from = readerEmailAdmin[0].ToString();
                    }
                }
                readerEmailAdmin.Close();

                SqlDataReader readerOtrosEmails = selectCommandOtrosEmails.ExecuteReader();
                if (readerOtrosEmails.HasRows) {
                    while(readerOtrosEmails.Read()) {
                        email.To.Add(readerOtrosEmails[0].ToString());
                    }
                }
                readerOtrosEmails.Close();

                email.From = new MailAddress(from);

                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.1and1.es";
                System.Net.NetworkCredential credencial = new System.Net.NetworkCredential();
                credencial.UserName = email.From.ToString();
                credencial.Password = "dorkitech2";
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = credencial;
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.Send(email);
            }
            catch (SqlException ex) {
                Response.Write("Ha ocurrido un error en la consulta a la base de datos: " + ex.Message);
            }
            catch (SmtpException ex) {
                //Response.Write("Ha ocurrido un error en con el protocolo SMTP: " + ex.Message);
            }
            catch (Exception ex) {
                //Response.Write("Ha ocurrido un error: " + ex.Message);
            }
            finally {
                conexion.Close();
            }
        }
    }
}