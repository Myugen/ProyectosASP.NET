using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamenASP {
    public partial class exm8_1 : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void ButtonAlmacenar_Click(object sender, EventArgs e) {
            if(Session["Mensaje"] != null)
                Session.Remove("Mensaje");
            else
                Session["Mensaje"] = TextBoxSesion.Text;
        }

        protected void ButtonMostrar_Click(object sender, EventArgs e) {
            if(Session["Mensaje"] == null)
                LiteralMensaje.Text = "La sesión está vacía, almacene algo primero";
            else
                LiteralMensaje.Text = Session["Mensaje"].ToString();
        }

        protected void ButtonBorrar_Click(object sender, EventArgs e) {
            if(Session["Mensaje"] != null)
                Session.Remove("Mensaje");
        }

        protected void LinkButton1_Click(object sender, EventArgs e) {
            Response.Redirect("~/exm8-1.aspx");
        }

        protected void LinkButtonEjercicio2_Click(object sender, EventArgs e) {
            Response.Redirect("~/exm8-2.aspx");
        }
    }
}