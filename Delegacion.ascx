<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Delegacion.ascx.cs" Inherits="Delegacion" %>
<asp:RadioButtonList runat="server" ID="delegacion" AutoPostBack="true">
     <asp:ListItem Text="Sede Central" Value="Sede Central"></asp:ListItem>
     <asp:ListItem Text="Oasis Norte" Value="Oasis Norte"></asp:ListItem>
     <asp:ListItem Text="Oasis Sur" Value="Oasis Sur"></asp:ListItem>
</asp:RadioButtonList>
<asp:CustomValidator OnServerValidate="validaCheck" runat="server" ErrorMessage="no puede ser vacio"></asp:CustomValidator>