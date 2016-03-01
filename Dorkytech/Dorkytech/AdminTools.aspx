<%@ Page Title="Administrador Toolbox - Dorkythech" Language="C#" MasterPageFile="~/Dorkytech.Master" AutoEventWireup="true" CodeBehind="AdminTools.aspx.cs" Inherits="Dorkytech.AdminTools" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Administrador Toolbox</h1>
    <asp:DropDownList ID="DropDownListEmpleados" runat="server" OnSelectedIndexChanged="DropDownListEmpleados_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList><br />
    <br />
    
    <div class="row">
        <div class="form-group">
            <label for="TextBoxNombre">Nombre</label>
            <asp:TextBox ID="TextBoxNombre" CssClass="form-control" runat="server" Enabled="False"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <label for="TextBoxUsuario">Usuario</label>
            <asp:TextBox ID="TextBoxUsuario" CssClass="form-control" runat="server" Enabled="False"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <label for="TextBoxDireccion">Dirección</label>
            <asp:TextBox ID="TextBoxDireccion" CssClass="form-control" runat="server" Enabled="False"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <label for="TextBoxCiudad">Ciudad</label>
            <asp:TextBox ID="TextBoxCiudad" CssClass="form-control" runat="server" Enabled="False"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <label for="TextBoxEstado">Estado</label>
            <asp:TextBox ID="TextBoxEstado" CssClass="form-control" runat="server" Enabled="False"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <label for="TextBoxCodigoPostal">Código Postal</label>
            <asp:TextBox CssClass="form-control" ID="TextBoxCodigoPostal" runat="server" Enabled="False"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <label for="TextBoxTelefonoFijo">Teléfono fijo</label>
            <asp:TextBox CssClass="form-control" ID="TextBoxTelefonoFijo" runat="server" Enabled="False"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <label for="TextBoxExtension">Extensión</label>
            <asp:TextBox CssClass="form-control" ID="TextBoxExtension" runat="server" Enabled="False"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <label for="TextBoxTelefonoMovil">Teléfono Móvil</label>
            <asp:TextBox CssClass="form-control" ID="TextBoxTelefonoMovil" runat="server" Enabled="False"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <label for="TextBoxEmail">Correo electrónico</label>
            <asp:TextBox CssClass="form-control" ID="TextBoxEmail" TextMode="Email" runat="server" Enabled="False"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 text-center">
            <asp:Button CssClass="btn btn-warning" ID="ButtonActualizarEmpleado" runat="server" Text="Actualizar empleado" Enabled="false" OnClick="ButtonActualizarEmpleado_Click" />
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 text-center">
                <asp:Button CssClass="btn btn-danger" ID="ButtonBorrarEmpleado" runat="server" Text="Borrar empleado" Enabled="false" OnClick="ButtonBorrarEmpleado_Click" />
            </div>
        </div>
    </div>
</asp:Content>
