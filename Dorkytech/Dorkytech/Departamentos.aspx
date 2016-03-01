<%@ Page Title="Departamentos - Dorkytech" Language="C#" MasterPageFile="~/Dorkytech.Master" AutoEventWireup="true" CodeBehind="Departamentos.aspx.cs" Inherits="Dorkytech.Departamentos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Departamentos</h1>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dorkitech %>" SelectCommand="SELECT [DepartamentoID], [Departamento] FROM [Departamentos]"></asp:SqlDataSource>
    <asp:GridView ID="GridViewDepartamentos" runat="server" AllowPaging="True" CssClass="table table-hover table-responsive" CellPadding="4" AllowSorting="True" PageSize="4" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="DepartamentoID" HeaderText="DepartamentoID" InsertVisible="False" ReadOnly="True" SortExpression="DepartamentoID" />
            <asp:BoundField DataField="Departamento" HeaderText="Departamento" InsertVisible="False" ReadOnly="True" SortExpression="Departamento" />
        </Columns>
    </asp:GridView>
</asp:Content>
