<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPageParcial.master" CodeFile="FinalDic21.aspx.cs" Inherits="FinalDic21" %>
<%@ Register Src="~/DNI.ascx" TagName="dni" TagPrefix="uc1" %>
<%@ Register Src="~/TipoContrato.ascx" TagName="tipoContrato" TagPrefix ="uc2" %>
<%@ Register Src="~/Delegacion.ascx" TagName="delegacion" TagPrefix="uc3" %>
<%@ Register Src="~/Estudios.ascx" TagName="estudios" TagPrefix="uc4" %>

    <asp:Content runat="server" ContentPlaceHolderID="caja">
    
   
        <asp:Table runat="server" BorderWidth="1" BorderColor="Black" BorderStyle="Solid">
            <asp:TableRow BorderWidth="1">
                <asp:TableHeaderCell BorderWidth="1" Text=" "></asp:TableHeaderCell>
                <asp:TableCell BorderWidth="1"><h2>ADMINISTRAR EMPLEADOS</h2></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow BorderWidth="1">
                <asp:TableHeaderCell BorderWidth="1">Apellido</asp:TableHeaderCell>
                <asp:TableCell BorderWidth="1">
                    <asp:TextBox runat="server" ID="apellido">
                    </asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="apellido" ErrorMessage="Debe completar este campo" Font-Bold="true"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow BorderWidth="1">
                <asp:TableHeaderCell BorderWidth="1">Nombre</asp:TableHeaderCell>
                <asp:TableCell BorderWidth="1">
                    <asp:TextBox runat="server" ID="nombre">
                    </asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="nombre" ErrorMessage="Debe completar este campo" Font-Bold="true"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow BorderWidth="1">
                <asp:TableHeaderCell BorderWidth="1">DNI</asp:TableHeaderCell>
                <asp:TableCell BorderWidth="1">
                    <uc1:dni runat="server" ID="dni" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow BorderWidth="1">
                <asp:TableHeaderCell BorderWidth="1">Tipo de Contrato</asp:TableHeaderCell>
                <asp:TableCell BorderWidth="1">
                    <uc2:tipoContrato runat="server" ID="tipoContrato" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow BorderWidth="1">
                <asp:TableHeaderCell BorderWidth="1">Regimen Laboral</asp:TableHeaderCell>
                <asp:TableCell BorderWidth="1">
                    <asp:DropDownList runat="server" ID="regimen">
                        <asp:ListItem Text="de 8 a 12" Value="de 8 a 12"></asp:ListItem>
                        <asp:ListItem Text="de 8 a 16" Value="de 8 a 16"></asp:ListItem>
                        <asp:ListItem Text="de 12 a 20" Value="de 12 a 20"></asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow BorderWidth="1">
                <asp:TableHeaderCell BorderWidth="1">Delegacion</asp:TableHeaderCell>
                <asp:TableCell BorderWidth="1">
                    <uc3:delegacion runat="server" ID="delegacion" />
                </asp:TableCell>
            </asp:TableRow>            
            <asp:TableRow BorderWidth="1">
                <asp:TableHeaderCell BorderWidth="1">Estudios</asp:TableHeaderCell>
                <asp:TableCell BorderWidth="1">
                    <uc4:estudios runat="server" ID="estudios" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow BorderWidth="1">
                <asp:TableHeaderCell BorderWidth="1">Descripcion</asp:TableHeaderCell>
                <asp:TableCell BorderWidth="1">
                    <asp:TextBox runat="server" ID="TextBox1" Height="100" Width="300">
                    </asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow BorderWidth="1">
                <asp:TableHeaderCell BorderWidth="1" Text=" "></asp:TableHeaderCell>
                <asp:TableCell BorderWidth="1">
                    <asp:Button runat="server" ID="guarda" Text="Guardar" OnClick="GuardaDatos" BorderStyle="Solid"/>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />
        <asp:Button runat="server" ID="sesion" Text="Sesion" OnClick="GuardaSesion" BorderStyle="Solid" />
    
    <asp:Table ID="datosGuardados" runat="server" BorderWidth="1">
        <asp:TableRow BorderWidth="1">
                <asp:TableHeaderCell BorderWidth="1">Apellido:</asp:TableHeaderCell>
                <asp:TableCell BorderWidth="1">
                    <asp:Label runat="server" ID="apellido1"></asp:Label>
                </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow BorderWidth="1">
                <asp:TableHeaderCell BorderWidth="1">Nombre:</asp:TableHeaderCell>
                <asp:TableCell BorderWidth="1">
                    <asp:Label runat="server" ID="nombre1"></asp:Label>
                </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow BorderWidth="1">
                <asp:TableHeaderCell BorderWidth="1">DNI:</asp:TableHeaderCell>
                <asp:TableCell BorderWidth="1">
                    <asp:Label runat="server" ID="dni1"></asp:Label>
                </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow BorderWidth="1">
                <asp:TableHeaderCell BorderWidth="1">Tipo de Contrato:</asp:TableHeaderCell>
                <asp:TableCell BorderWidth="1">
                    <asp:Label runat="server" ID="tipo1"></asp:Label>
                </asp:TableCell>
        </asp:TableRow>
         <asp:TableRow BorderWidth="1">
                <asp:TableHeaderCell BorderWidth="1">Regimen Laboral:</asp:TableHeaderCell>
                <asp:TableCell BorderWidth="1">
                    <asp:Label runat="server" ID="regimen1"></asp:Label>
                </asp:TableCell>
        </asp:TableRow>
         <asp:TableRow BorderWidth="1">
                <asp:TableHeaderCell BorderWidth="1">Delegacion:</asp:TableHeaderCell>
                <asp:TableCell BorderWidth="1">
                    <asp:Label runat="server" ID="delegacion1"></asp:Label>
                </asp:TableCell>
        </asp:TableRow>
         <asp:TableRow BorderWidth="1">
                <asp:TableHeaderCell BorderWidth="1">Estudios:</asp:TableHeaderCell>
                <asp:TableCell BorderWidth="1">
                    <asp:Label runat="server" ID="estudios1"></asp:Label>
                </asp:TableCell>
        </asp:TableRow>
         <asp:TableRow BorderWidth="1">
                <asp:TableHeaderCell BorderWidth="1">Descripcion:</asp:TableHeaderCell>
                <asp:TableCell BorderWidth="1">
                    <asp:Label runat="server" ID="descripcion1"></asp:Label>
                </asp:TableCell>
        </asp:TableRow>
    </asp:Table>

    </asp:Content>