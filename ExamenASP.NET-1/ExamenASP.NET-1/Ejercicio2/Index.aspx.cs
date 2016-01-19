using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamenASP.NET_1.Ejercicio2 {
    public partial class Index : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void DropDownListOperacion_SelectedIndexChanged(object sender, EventArgs e) {
            if(TextBoxPrimeraCifra.Text.Length > 0 && TextBoxSegundaCifra.Text.Length > 0) {
                double primeraCifra = Convert.ToDouble(TextBoxPrimeraCifra.Text);
                double segundaCifra = Convert.ToDouble(TextBoxSegundaCifra.Text);
                double resultado = 0;
                int opcionEscogida = Convert.ToInt32(DropDownListOperacion.SelectedValue);
                switch (opcionEscogida) {
                    case 1:
                        try {
                            resultado = primeraCifra + segundaCifra;
                            TableCellSuma.Text = "La suma es:" + resultado.ToString();
                        }
                        catch (FormatException ev) {
                            TableCellSuma.Text = "No puede operar con letras, es una CALCULADORA";
                        }
                        break;
                    case 2:
                        try {
                            resultado = primeraCifra - segundaCifra;
                            TableCellResta.Text = "La resta es:" + resultado.ToString();
                        }
                        catch (FormatException ev) {
                            TableCellResta.Text = "No se puede operar con letras, es una CALCULADORA";
                        }
                        break;
                    case 3:
                        try {
                            resultado = primeraCifra * segundaCifra;
                            TableCellMultiplicacion.Text = "La multiplicación es:" + resultado.ToString();
                        }
                        catch(FormatException ev) {
                            TableCellMultiplicacion.Text = "No se puede operar con letras, es una CALCULADORA";
                        }
                        break;
                    case 4:
                        if(segundaCifra != 0) {
                            try {
                                resultado = primeraCifra / segundaCifra;
                                TableCellDivision.Text = "La división es:" + resultado.ToString();
                            }
                            catch(FormatException ev) {
                                TableCellDivision.Text = "No se puede operar con letras, es una CALCULADORA";
                            }
                        }
                        else {
                            TableCellDivision.Text = "NO SE PUEDE DIVIDIR POR '0'";
                        }
                        break;
                }
            }
        }
    }
}