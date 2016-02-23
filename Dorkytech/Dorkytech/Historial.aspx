<%@ Page Title="Historial - Dorkytech" Language="C#" MasterPageFile="~/Dorkytech.Master" AutoEventWireup="true" CodeBehind="Historial.aspx.cs" Inherits="Dorkytech.Historial" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Historial</h1>
    <div class="form-group">
        <label for="TextBoxPuesto">Puesto</label><br />
        <asp:TextBox CssClass="form-control" ID="TextBoxPuesto" runat="server" TextMode="Number"></asp:TextBox><br />
    </div>
    <div class="form-group">
        <label for="DropDownListCategoria">Categoría del problema</label><br />
        <asp:DropDownList CssClass="form-control" ID="DropDownListCategoria" runat="server"></asp:DropDownList><br />
    </div>
    <div class="form-group">
        <label for="DropDownListTipoIncidencia">Tipo de incidencia</label><br />
        <asp:DropDownList CssClass="form-control" ID="DropDownListIncidencia" runat="server"></asp:DropDownList><br />
    </div>
    <div class="form-group">
        <label for="TextAreaDescripcion">Descripción del problema</label><br />
        <asp:TextBox ID="TextAreaDescripcion" runat="server" TextMode="MultiLine" Rows="10" Width="300px"></asp:TextBox><br />
    </div>
    <asp:Button ID="ButtonRegistrar" CssClass="btn btn-primary" runat="server" Text="Registrar incidencia" OnClick="ButtonRegistrar_Click" /><br />
    <asp:Label ID="LabelResultado" runat="server"></asp:Label>
</asp:Content>
