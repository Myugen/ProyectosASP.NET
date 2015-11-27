<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio5.aspx.cs" Inherits="ASP.NETAct1_1.Ejercicio5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Selected="True" Value="0">Sin selección</asp:ListItem>
            <asp:ListItem Value="1">Día</asp:ListItem>
            <asp:ListItem Value="2">Día y semana</asp:ListItem>
            <asp:ListItem Value="3">Día, semana y mes</asp:ListItem>
        </asp:DropDownList>
        <br />
        <hr />
        <br />
        <asp:Literal ID="LiteralResultado" runat="server"></asp:Literal>
    </div>
    </form>
</body>
</html>
