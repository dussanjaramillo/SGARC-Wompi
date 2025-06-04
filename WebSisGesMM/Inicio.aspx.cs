using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace WebSisGesMM
{
    public partial class Inicio : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtPreFactura.Focus();
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {

            if (txtPreFactura.Text == "")
            {
                Alerta("!!Atención!!! La Prefactura debe ser Numérico");
                return;
            }
            txtPreFactura.Enabled = false;
            btnBuscar.Enabled = false;

            hfLinkWompi.Value = "0";
            hfNombreCentro.Value = "";
            BuscarCentroFormacion();

            if (hfLinkWompi.Value == "")
            {
                Alerta("!!Atención!!! El " + hfNombreCentro.Value + " Aún No Tiene Link Para Pagos Por Wompi");
                return;
            }
            if (hfLinkWompi.Value == "0")
            {
                Alerta("Atención!!! El Número de la Prefactura No Existe, está Anulada o Ya está Pagada");
                return;
            }

            btnPagar.Visible = true;
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Inicio.aspx", false);
        }

        protected void BuscarCentroFormacion()
        {
            var CadenaConexion = ConfigurationManager.ConnectionStrings["CentroFormacion"].ToString();
            using (SqlConnection con = new SqlConnection(CadenaConexion))
            {
                var Textocmd = "[CentroFormacion].[Usp_BuscarLinkWompiXFactura]";
                SqlCommand cmd = new SqlCommand(Textocmd, con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add("@NumeroFactura", SqlDbType.Int).Value = Convert.ToInt32(txtPreFactura.Text);
                try
                {
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            hfLinkWompi.Value = reader[0].ToString();
                            hfNombreCentro.Value = reader[1].ToString();
                        }
                        con.Close();
                    }
                }
                catch (SqlException ex)
                {
                    Alerta("Error: " + ex.Message);
                }
            }
        }

        protected void Alerta(string Mensaje)
        {
            //string message = "Hello! Mudassar.";
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append("<script type = 'text/javascript'>");
            sb.Append("window.onload=function(){");
            sb.Append("alert('");
            sb.Append(Mensaje.Replace("'", "").Replace("\r\n", ""));
            sb.Append("')};");
            sb.Append("</script>");
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
        }

        protected void btnPagar_Click(object sender, EventArgs e)
        {
            btnPagar.Visible = false;
            string _open = "window.open('" + hfLinkWompi.Value.Trim() + "', '_blank');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), Guid.NewGuid().ToString(), _open, true);
        }
    }
}