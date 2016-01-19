using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NETAct2.Ejercicio_1 {
    public partial class Indice : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void ListBoxComparar_SelectedIndexChanged(object sender, EventArgs e) {
            if(TextBoxCadena1.Text != "" && TextBoxCadena2.Text != "") {
                bool resultado = false;
                string texto1 = Convert.ToInITextBoxCadena1.Text;
                string texto2 = TextBoxCadena2.Text;
                int opcion = Convert.ToInt32(ListBoxComparar.SelectedValue);
                if(opcion == 0)
                    if(texto1 == texto2)
                        resultado = true;
                if(opcion == 1)
                    if(texto1 != texto2)
                        resultado = true;
                if(opcion == 2)
                    if(texto1 > texto2)
                        resultado = true;
                if(opcion == 3)
                    if(texto1 >= texto2)
                        resultado = true;
                if(opcion == 4)
                    if(texto1 < texto2)
                        resultado = true;
                if(opcion == 5)
                    if(texto1 <= texto2)
                        resultado = true;
                if(resultado)
                    LiteralResultado.Text = "El resultado es satisfactorio.";
                else
                    LiteralResultado.Text = "El resultado no es correcto.";
            }
            else {
                LiteralResultado.Text = "No deje los campos de texto vacío.";
            }
        }
    }
}