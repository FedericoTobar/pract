using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Estudios : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string Seleccion()
    {
        return estudios.SelectedValue;
    }
    public void condicion()
    {
        estudios.Items.Remove("Secundario Incompleto");
        
    }
    protected void algunoCheck(object source, ServerValidateEventArgs args)
    {
        args.IsValid = revisar();
    }
    public bool revisar()
    {
        var tamano = estudios.Items.Count;
        for (int i = 0; i < tamano; i++)
        {
            if (estudios.Items[i].Selected)
            {
                return true;
            }
        }
        return false;
    }
}