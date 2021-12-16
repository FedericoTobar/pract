<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Estudios.ascx.cs" Inherits="Estudios" %>
<asp:CheckBoxList runat="server" ID="estudios" AutoPostBack="true">
     <asp:ListItem Text="Secundario Incompleto" Value="Secundario Incompleto"></asp:ListItem>
     <asp:ListItem Text="Secundario Completo" Value="Secundario Completo"></asp:ListItem>
     <asp:ListItem Text="Terciario Completo" Value="Terciario Completo"></asp:ListItem>
     <asp:ListItem Text="Universitario Completo" Value="Universitario Completo"></asp:ListItem>
</asp:CheckBoxList>
<asp:CustomValidator runat="server" ErrorMessage="no puede ser vacio" OnServerValidate="algunoCheck"></asp:CustomValidator>