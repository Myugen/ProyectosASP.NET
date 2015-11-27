using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NETAct1_1
{
    public partial class Ejercicio2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e) {
            if((TextBox1.Text.Length != 0) && (TextBox2.Text.Length != 0)) {
                LabelResultado.ForeColor = System.Drawing.Color.Black;
                LabelResultado.Text = TextBox1.Text + " " + TextBox2.Text;
            }
            else {
                LabelResultado.ForeColor = System.Drawing.Color.Red;
                LabelResultado.Text = "Por favor rellene los TextBoxes.";
            }
        }
    }
}