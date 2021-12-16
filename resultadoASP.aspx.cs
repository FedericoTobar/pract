using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class resultadoASPaspx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        apellido.Text = Session["apellido"].ToString();
        nombre.Text = Session["nombre"].ToString();
        dni.Text = Session["dni"].ToString();
        tipo.Text = Session["tipo de contrato"].ToString();
        regimen.Text = Session["regimen de trabajo"].ToString();
        delegacion.Text = Session["delegacion"].ToString();
        estudios.Text = Session["estudios"].ToString();
        descripcion.Text = Session["descripcion"].ToString();
    }
}