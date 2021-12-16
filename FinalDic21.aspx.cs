using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FinalDic21 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        datosGuardados.Visible = false;
        if (delegacion.Seleccion()=="Sede Central")
        {
            estudios.condicion();
            
        }
    }
    protected void GuardaDatos(object sender, EventArgs e)
    {
        if (!Page.IsValid)
        {
            Console.WriteLine("Error en la carga, verifique los casilleros");
        }
        else
        {
            datosGuardados.Visible = true;
            apellido1.Text = apellido.Text;
            nombre1.Text = nombre.Text;
            dni1.Text = dni.Seleccion();
            tipo1.Text = tipoContrato.Seleccion();
            regimen1.Text = regimen.SelectedValue;
            delegacion1.Text = delegacion.Seleccion();
            estudios1.Text = estudios.Seleccion();
            descripcion1.Text = TextBox1.Text;
        }
    }
    protected void GuardaSesion(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Session["apellido"] = apellido.Text;
            Session["nombre"] = nombre.Text;
            Session["dni"] = dni.Seleccion();
            Session["tipo de contrato"] = tipoContrato.Seleccion();
            Session["regimen de trabajo"] = regimen.SelectedValue;
            Session["delegacion"] = delegacion.Seleccion();
            Session["estudios"] = estudios.Seleccion();
            Session["descripcion"] = TextBox1.Text;
            Response.Redirect("resultadoASP.aspx");
        }
        else
        {
            Console.WriteLine("Error al guardar sesion, revise los campos");
        }
    }
}