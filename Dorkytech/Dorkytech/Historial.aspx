<%@ Page Title="Historial - Dorkytech" Language="C#" MasterPageFile="~/Dorkytech.Master" AutoEventWireup="true" CodeBehind="Historial.aspx.cs" Inherits="Dorkytech.Historial" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Historial</h1>
    <label for="TextBoxPuesto">Puesto</label><br />
    <asp:TextBox ID="TextBoxPuesto" runat="server" TextMode="Number"></asp:TextBox><br />
    <label for="DropDownListCategoria">Categoría del problema</label><br />
    <asp:DropDownList ID="DropDownListCategoria" runat="server"></asp:DropDownList><br />
    <label for="DropDownListTipoIncidencia">Tipo de incidencia</label><br />
    <asp:DropDownList ID="DropDownListIncidencia" runat="server"></asp:DropDownList><br />
    <label for="TextAreaDescripcion">Descripción del problema</label><br />
    <asp:TextBox ID="TextAreaDescripcion" runat="server" TextMode="MultiLine" Rows="10" Width="300px"></asp:TextBox><br />
    <asp:Button ID="ButtonRegistrar" runat="server" Text="Registrar incidencia" />
</asp:Content>
