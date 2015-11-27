using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NETAct1_1
{
    public partial class Ejercicio3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBoxList2_SelectedIndexChanged(object sender, EventArgs e) {
            CheckBoxList checkbox = (CheckBoxList)sender;
            List<ListItem> itemsSeleccionados = new List<ListItem>();
            List<ListItem> itemsNoSeleccionados = new List<ListItem>();
            for(int i = 0; i < checkbox.Items.Count; i++)
                if(checkbox.Items[i].Selected)
                    itemsSeleccionados.Add(checkbox.Items[i]);
                else
                    itemsNoSeleccionados.Add(checkbox.Items[i]);

            for(int i = 0; i < itemsSeleccionados.Count; i++) {
                if(itemsSeleccionados[i].Value == "tabla")
                    CheckBoxList1.RepeatLayout = RepeatLayout.Table;
                if(itemsSeleccionados[i].Value == "horizontal")
                    CheckBoxList1.RepeatDirection = RepeatDirection.Horizontal;
            }

            for(int i = 0; i < itemsNoSeleccionados.Count; i++) {
                if(itemsNoSeleccionados[i].Value == "tabla")
                    CheckBoxList1.RepeatLayout = RepeatLayout.Flow;
                if(itemsNoSeleccionados[i].Value == "horizontal")
                    CheckBoxList1.RepeatDirection = RepeatDirection.Vertical;
            }
             
        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e) {
            CheckBoxList checkbox = (CheckBoxList)sender;
            List<ListItem> itemsSeleccionados = new List<ListItem>();
            for(int i = 0; i < checkbox.Items.Count; i++)
                if(checkbox.Items[i].Selected)
                    itemsSeleccionados.Add(checkbox.Items[i]);

            LabelResultado.Text = "Ha seleccionado " + itemsSeleccionados.Count + " elementos.";
        }
    }
}