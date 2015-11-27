<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="ASP.NETAct1_1.Ejercicio1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="DropDownListDestinos" runat="server">
            <asp:ListItem Selected="True" Text="Isla de Pascua" Value="1000"></asp:ListItem>
            <asp:ListItem Selected="False" Text="Morea" Value="900"></asp:ListItem>
            <asp:ListItem Selected="False" Text="Papeete" Value="750"></asp:ListItem>
            <asp:ListItem Selected="False" Text="Bora-Bora" Value="850"></asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="ButtonPrecio" runat="server" Text="Ver precios" OnClick="ButtonPrecio_Click" /><br />
        <hr />
        <asp:Label ID="LabelResultado" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
