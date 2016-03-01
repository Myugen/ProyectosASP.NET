<%@ Page Title="Newsletter" Language="C#" MasterPageFile="~/Dorkytech.Master" AutoEventWireup="true" CodeBehind="AdminNewsletter.aspx.cs" Inherits="Dorkytech.AdminNewsletter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="form-group">
            <label for="TextBoxSubject">Asunto</label>
            <asp:TextBox ID="TextBoxSubject" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorAsunto" runat="server" ControlToValidate="TextBoxSubject" CssClass="text-danger" ErrorMessage="No puede dejar el campo asunto vacío"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <label for="TextBoxMessage">Mensaje</label>
            <asp:TextBox ID="TextBoxMessage" TextMode="MultiLine" Height="200" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorMessage" runat="server" ControlToValidate="TextBoxMessage" CssClass="text-danger" ErrorMessage="No puede dejar el campo mensaje vacío"></asp:RequiredFieldValidator>

        </div>
    </div>
    <div class="row">
        <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Enviar newsletter" OnClick="Button1_Click" />
    </div>
</asp:Content>
