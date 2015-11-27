using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NETAct1_1
{
    public partial class Ejercicio1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void ButtonPrecio_Click(object sender, EventArgs e) {
            LabelResultado.Text = "El precio de " + DropDownListDestinos.SelectedItem.Text + " es " + DropDownListDestinos.SelectedItem.Value + "€";
        }
    }
}