<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio4.aspx.cs" Inherits="ASP.NETAct1_1.Ejercicio4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <label for="DropDownListFilas"><strong>Filas: </strong></label>
        <asp:DropDownList ID="DropDownListFilas" runat="server">
            <asp:ListItem Selected="True" Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="3"></asp:ListItem>
            <asp:ListItem Text="4" Value="4"></asp:ListItem>
            <asp:ListItem Text="5" Value="5"></asp:ListItem>
        </asp:DropDownList>
        &nbsp
        <label for="DropDownListColumnas"><strong>Columnas: </strong></label>
        <asp:DropDownList ID="DropDownListColumnas" runat="server">
            <asp:ListItem Selected="True" Text="1" Value="1"></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="3"></asp:ListItem>
            <asp:ListItem Text="4" Value="4"></asp:ListItem>
            <asp:ListItem Text="5" Value="5"></asp:ListItem>
        </asp:DropDownList>
        &nbsp
        <asp:Button ID="ButtonTabla" runat="server" Text="GenerarTabla" OnClick="ButtonTabla_Click" />
        <asp:Table ID="TableMatriz" runat="server">
            
        </asp:Table>
        <br />

    </div>
    </form>
</body>
</html>
