using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NETAct1_1 {
    public partial class Ejercicio4 : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void ButtonTabla_Click(object sender, EventArgs e) {
            int filas = Convert.ToInt32(DropDownListFilas.SelectedItem.Value);
            int columnas = Convert.ToInt32(DropDownListColumnas.SelectedItem.Value);

            TableMatriz.BorderStyle = BorderStyle.Solid;

            if(TableMatriz.Rows.Count != 0)
                for(int i = 0; i < TableMatriz.Rows.Count; i++)
                    TableMatriz.Rows.RemoveAt(i);

            for(int i = 0; i < filas; i++) {
                TableRow nuevaFila = new TableRow();
                nuevaFila.BorderStyle = BorderStyle.Solid;
                for(int j = 0; j < columnas; j++) {
                    TableCell nuevaColumna = new TableCell();
                    nuevaColumna.BorderStyle = BorderStyle.Solid;
                    nuevaColumna.Text = "[" + (i + 1).ToString() + "," + (j + 1).ToString() + "]";
                    nuevaFila.Cells.Add(nuevaColumna);
                }
                TableMatriz.Rows.Add(nuevaFila);
            }
        }
    }
}