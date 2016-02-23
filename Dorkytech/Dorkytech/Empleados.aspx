<%@ Page Title="Directorio de Empleados - Dorkytech" Language="C#" MasterPageFile="~/Dorkytech.Master" AutoEventWireup="true" CodeBehind="Empleados.aspx.cs" Inherits="Dorkytech.Empleados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Directorio de empleados</h1>
    <asp:DataList ID="DataListEmpleados" runat="server" OnItemCommand="DataListEmpleados_ItemCommand">
        <ItemTemplate>
            <asp:Literal ID="Literal1" EnableViewState="false" Visible="false" runat="server" Text="Teléfono: "></asp:Literal>
            <strong><asp:Literal ID="LiteralTelefono" runat="server" Visible="false" EnableViewState="false" Text='<%# DataBinder.Eval(Container.DataItem, "Telefono") %>'></asp:Literal></strong><br />
            Empleado ID: <strong><%# DataBinder.Eval(Container.DataItem, "EmpleadoID") %></strong><br />
            Nombre: <strong><%# DataBinder.Eval(Container.DataItem, "Nombre") %></strong><br />
            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="verDetalles" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "EmpleadoID") %>' >Ver teléfono personal de <%# DataBinder.Eval(Container.DataItem, "Nombre") %></asp:LinkButton>
            <hr />
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
