<%@ Page Title="Historial - Dorkytech" Language="C#" MasterPageFile="~/Dorkytech.Master" AutoEventWireup="true" CodeBehind="Historial.aspx.cs" Inherits="Dorkytech.Historial" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .fieldError {
            background-color: #333;
            color: #f7f5f5;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <h1>Historial</h1>
    <div class="form-group">
        <label for="TextBoxPuesto">Puesto</label><br />
        <asp:TextBox CssClass="form-control" ID="TextBoxPuesto" runat="server" TextMode="Number"></asp:TextBox><br />
        <asp:RangeValidator ID="RangeValidatorPuesto" runat="server" Display="None" ErrorMessage="La cifra debe estar entre 1 y 50" MaximumValue="50" MinimumValue="1" ControlToValidate="TextBoxPuesto"></asp:RangeValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPuesto" runat="server" Display="None" ErrorMessage="El campo no puede estar vacío" ControlToValidate="TextBoxPuesto"></asp:RequiredFieldValidator>
        <ajaxToolkit:ValidatorCalloutExtender ID="ValidatorCalloutExtenderPuestoRango" runat="server" HighlightCssClass="fieldError" TargetControlID="RangeValidatorPuesto"></ajaxToolkit:ValidatorCalloutExtender>
        <ajaxToolkit:ValidatorCalloutExtender ID="ValidatorCalloutExtender1Puesto" runat="server" HighlightCssClass="fieldError" TargetControlID="RequiredFieldValidatorPuesto"></ajaxToolkit:ValidatorCalloutExtender>
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
        <asp:TextBox ID="TextAreaDescripcion" runat="server" TextMode="MultiLine" CssClass="form-control" Rows="10"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorDescripcion" runat="server" Display="None" ErrorMessage="El campo no puede estar vacío" ControlToValidate="TextAreaDescripcion"></asp:RequiredFieldValidator>
        <ajaxToolkit:ValidatorCalloutExtender ID="ValidatorCalloutExtenderDescripcion" runat="server" HighlightCssClass="fieldError" TargetControlID="RequiredFieldValidatorDescripcion"></ajaxToolkit:ValidatorCalloutExtender>
    </div>
    <asp:Button ID="ButtonRegistrar" CssClass="btn btn-primary" runat="server" Text="Registrar incidencia" OnClick="ButtonRegistrar_Click" /><br />
    <asp:Label ID="LabelResultado" runat="server"></asp:Label>
</asp:Content>
