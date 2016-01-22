<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="exm8-1.aspx.cs" Inherits="ExamenASP.exm8_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBoxSesion" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="ButtonAlmacenar" runat="server" Text="Almacenar en la sesión" OnClick="ButtonAlmacenar_Click" />
        <br />
        <asp:Button ID="ButtonMostrar" runat="server" Text="Mostrar contenido de la sesión" OnClick="ButtonMostrar_Click" />
        <br />
        <asp:Button ID="ButtonBorrar" runat="server" Text="Eliminar contenido de la sesión" OnClick="ButtonBorrar_Click" />
        <br />
        <asp:Literal ID="LiteralMensaje" runat="server"></asp:Literal>
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Recargar página</asp:LinkButton>
        <br />
        <br />
        <asp:LinkButton ID="LinkButtonEjercicio2" runat="server" OnClick="LinkButtonEjercicio2_Click">Ir al ejercicio 2</asp:LinkButton>
    </div>
    </form>
</body>
</html>
