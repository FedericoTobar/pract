<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DNI.ascx.cs" Inherits="DNI" %>
<asp:TextBox runat="server" ID="dni"></asp:TextBox>
<asp:RequiredFieldValidator ControlToValidate="dni" runat="server" ErrorMessage="este campo debe completarse"></asp:RequiredFieldValidator>
<%--<asp:RangeValidator ControlToValidate="dni" runat="server" ID="validaLargo" MinimumValue="10000000"></asp:RangeValidator>--%>