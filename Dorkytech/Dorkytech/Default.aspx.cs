using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dorkytech {
    public partial class Default : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            
            string zipCode = "90291";
            Weather.Weather tiempo = new Weather.Weather();
            Weather.WeatherDescription[] arrayDescripcion = tiempo.GetWeatherInformation();
            int weatherId = tiempo.GetCityWeatherByZIP(zipCode).WeatherID;
            LabelCiudad.Text = tiempo.GetCityWeatherByZIP(zipCode).City;
            LabelEstado.Text = tiempo.GetCityWeatherByZIP(zipCode).State;
            LabelDescripcion.Text = tiempo.GetCityWeatherByZIP(zipCode).Description;
            LabelTemperatura.Text = tiempo.GetCityWeatherByZIP(zipCode).Temperature + "ºF";
            LabelHumedad.Text = "Humedad relativa: " + tiempo.GetCityWeatherByZIP(zipCode).RelativeHumidity + "%";
            LabelViento.Text = "Viento: " + tiempo.GetCityWeatherByZIP(zipCode).Wind;
            LabelPresion.Text = "Presión: " + tiempo.GetCityWeatherByZIP(zipCode).Pressure;

            foreach (var item in arrayDescripcion) {
                if (item.WeatherID == weatherId) {
                    ImageTiempo.ImageUrl = item.PictureURL;
                }
            }
        }
    }
}