<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="exm8-2.aspx.cs" Inherits="ExamenASP.exm8_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Literal ID="LiteralMensaje" runat="server"></asp:Literal>
        <br />
        <asp:DataGrid ID="DataGridEmpleados" runat="server"></asp:DataGrid>
        <br />
        <asp:Button ID="ButtonRecargar" runat="server" Text="Recargar página" OnClick="ButtonRecargar_Click" />
        <br />
        <asp:LinkButton ID="LinkButtonEjercicio1" runat="server" OnClick="LinkButtonEjercicio1_Click">Ir al ejercicio 1</asp:LinkButton>
    </div>
    </form>
</body>
</html>
