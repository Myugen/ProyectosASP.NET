using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Dorkytech {
    public partial class Dorkytech : System.Web.UI.MasterPage {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void LoginStatus1_LoggedOut(object sender, EventArgs e) {
            FormsAuthentication.SignOut();
            Session.Clear();
            Session.Abandon();
            Session.RemoveAll();
            Response.Cookies["ASP.NET_SessionId"].Value = String.Empty;
            Response.Cookies["ASP.NET_SessionId"].Expires = DateTime.Now.AddYears(-1);
        }
    }
}