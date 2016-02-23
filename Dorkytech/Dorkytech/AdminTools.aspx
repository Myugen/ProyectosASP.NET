<%@ Page Title="Administrador Toolbox - Dorkythech" Language="C#" MasterPageFile="~/Dorkytech.Master" AutoEventWireup="true" CodeBehind="AdminTools.aspx.cs" Inherits="Dorkytech.AdminTools" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Administrador Toolbox</h1>
    <asp:DropDownList ID="DropDownListEmpleados" runat="server" OnSelectedIndexChanged="DropDownListEmpleados_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList><br />
    <br />
    <table border="0">
        <tr>
            <td>
                <label for="TextBoxNombre">Nombre</label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxNombre" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <label for="TextBoxUsuario">Usuario</label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxUsuario" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <label for="TextBoxDireccion">Dirección</label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxDireccion" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <label for="TextBoxCiudad">Ciudad</label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxCiudad" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <label for="TextBoxEstado">Estado</label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxEstado" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <label for="TextBoxCodigoPostal">Código Postal</label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxCodigoPostal" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <label for="TextBoxTelefonoFijo">Teléfono fijo</label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxTelefonoFijo" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <label for="TextBoxExtension">Extensión</label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxExtension" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <label for="TextBoxTelefonoMovil">Teléfono Móvil</label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxTelefonoMovil" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="ButtonActualizarEmpleado" runat="server" Text="Actualizar empleado" Enabled="false" OnClick="ButtonActualizarEmpleado_Click" />
            </td>
            <td>
                <asp:Button ID="ButtonBorrarEmpleado" runat="server" Text="Borrar empleado" Enabled="false" OnClick="ButtonBorrarEmpleado_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
