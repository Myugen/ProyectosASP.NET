using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NETAct1_1 {
    public partial class Ejercicio5 : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e) {
            DropDownList dropdownOpcion = (DropDownList)sender;
            ListItem opcionSeleccionado = dropdownOpcion.SelectedItem;
            if(opcionSeleccionado.Value == "0") {
                Calendar1.SelectionMode = CalendarSelectionMode.None;
            }
            if(opcionSeleccionado.Value == "1") {
                Calendar1.SelectionMode = CalendarSelectionMode.Day;
            }
            if(opcionSeleccionado.Value == "2") {
                Calendar1.SelectionMode = CalendarSelectionMode.DayWeek;
            }
            if(opcionSeleccionado.Value == "3") {
                Calendar1.SelectionMode = CalendarSelectionMode.DayWeekMonth;
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e) {
            Calendar calendario = (Calendar)sender;
            if(calendario.SelectedDates.Count > 1)
                LiteralResultado.Text = "Fechas seleccionadas:<br>";
            else
                LiteralResultado.Text = "Fecha seleccionada: <br>";
            for(int i = 0; i < calendario.SelectedDates.Count; i++) {
                LiteralResultado.Text += calendario.SelectedDates[i].ToLongDateString() + "<br>";
            }
        }
    }
}