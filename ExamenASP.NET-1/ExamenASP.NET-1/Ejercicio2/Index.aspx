<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ExamenASP.NET_1.Ejercicio2.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>Calculadora</h2>
        <asp:Label ID="Label1" runat="server" Text="Primera cifra:" BackColor="#3399FF" Font-Bold="True"></asp:Label><br />
        <asp:TextBox ID="TextBoxPrimeraCifra" runat="server" ></asp:TextBox><br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Segunda cifra:" BackColor="#3399FF" Font-Bold="True"></asp:Label><br />
        <asp:TextBox ID="TextBoxSegundaCifra" runat="server" ></asp:TextBox><br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Operación a realizar:" BackColor="#6600FF" Font-Bold="True"></asp:Label><br />
        <asp:DropDownList ID="DropDownListOperacion" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownListOperacion_SelectedIndexChanged">
            <asp:ListItem Value="0">----Selecciona----</asp:ListItem>
            <asp:ListItem Value="1">Suma</asp:ListItem>
            <asp:ListItem Value="2">Resta</asp:ListItem>
            <asp:ListItem Value="3">Multiplicación</asp:ListItem>
            <asp:ListItem Value="4">División</asp:ListItem>
        </asp:DropDownList>
    </div>
    </form>
    <br />
    <asp:Table ID="Table1" runat="server" BorderWidth="1" BorderStyle="Solid" BorderColor="Black" GridLines="Both">
        <asp:TableHeaderRow Font-Bold="true" HorizontalAlign="Center">
            <asp:TableHeaderCell>Operación</asp:TableHeaderCell>
            <asp:TableHeaderCell ColumnSpan="3">Resultado</asp:TableHeaderCell>
        </asp:TableHeaderRow>
        <asp:TableRow HorizontalAlign="Center">
            <asp:TableHeaderCell Font-Bold="true">Suma</asp:TableHeaderCell>
            <asp:TableCell ColumnSpan="3" runat="server" ID="TableCellSuma"></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow HorizontalAlign="Center">
            <asp:TableHeaderCell Font-Bold="true">Resta</asp:TableHeaderCell>
            <asp:TableCell ColumnSpan="3" runat="server" ID="TableCellResta"></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow HorizontalAlign="Center">
            <asp:TableHeaderCell Font-Bold="true">Multiplicación</asp:TableHeaderCell>
            <asp:TableCell ColumnSpan="3" runat="server" ID="TableCellMultiplicacion"></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow HorizontalAlign="Center">
            <asp:TableHeaderCell Font-Bold="true">División</asp:TableHeaderCell>
            <asp:TableCell ColumnSpan="3" runat="server" ID="TableCellDivision" BorderStyle="None"></asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</body>
</html>
