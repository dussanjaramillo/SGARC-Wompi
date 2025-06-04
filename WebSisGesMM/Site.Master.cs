using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSisGesMM
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LblNumeroVisitante.Text = "Visitante: " + string.Format("{0:00000000}", Convert.ToInt64(Session["_NumeroVisitante"].ToString()));
        }
    }
}