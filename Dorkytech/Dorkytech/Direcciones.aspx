<%@ Page Title="Libreta de direcciones - Dorkytech" Language="C#" MasterPageFile="~/Dorkytech.Master" AutoEventWireup="true" CodeBehind="Direcciones.aspx.cs" Inherits="Dorkytech.Direcciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Libreta de direcciones</h1>
    <asp:GridView ID="GridViewDirecciones" runat="server" AutoGenerateColumns="false" OnSelectedIndexChanged="GridViewDirecciones_SelectedIndexChanged">
        <Columns>
            <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
            <asp:BoundField HeaderText="Ciudad" DataField="Ciudad" />
            <asp:BoundField HeaderText="Teléfono" DataField="TelfMobil" />
            <asp:ButtonField HeaderText="Detalles" CommandName="Select" Text="Más información" />
        </Columns>
    </asp:GridView><br />
    <asp:DetailsView ID="DetailsViewDetalles" runat="server" Height="50px" Width="125px" AutoGenerateRows="false">
        <HeaderTemplate>
            <strong><%#DataBinder.Eval(Container.DataItem, "Nombre") %></strong>
        </HeaderTemplate>
        <Fields>
            <asp:BoundField HeaderText="Dirección" DataField="Direccion" />
            <asp:BoundField HeaderText="Ciudad" DataField="Ciudad" />
            <asp:BoundField HeaderText="Estado" DataField="Estado" />
            <asp:BoundField HeaderText="Código Postal" DataField="Postal" />
            <asp:BoundField HeaderText="Teléfono" DataField="Telefono" />
            <asp:BoundField HeaderText="Extensión" DataField="Extension" />
        </Fields>
    </asp:DetailsView>

</asp:Content>
