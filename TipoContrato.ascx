<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TipoContrato.ascx.cs" Inherits="TipoContrato" %>
<asp:DropDownList runat="server" ID="tipo">
    <asp:ListItem Text="planta permanente" Value="planta permanente"></asp:ListItem>
    <asp:ListItem Text="contratado" Value="contratado"></asp:ListItem>
    <asp:ListItem Text="pasante" Value="pasante"></asp:ListItem>
</asp:DropDownList>
<asp:RequiredFieldValidator runat="server" ControlToValidate="tipo" ErrorMessage="Debe seleccionar uno" Font-Bold="true"></asp:RequiredFieldValidator>