using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Delegacion : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string Seleccion()
    {
        return delegacion.SelectedValue;
    }
    protected void validaCheck(object source, ServerValidateEventArgs args)
    {
        args.IsValid = revisar();
    }
    public bool revisar()
    {
        var tamano = delegacion.Items.Count;
        for (int i = 0; i < tamano; i++)
        {
            if (delegacion.Items[i].Selected)
            {
                return true;
            }
        }
        return false;
    }
}