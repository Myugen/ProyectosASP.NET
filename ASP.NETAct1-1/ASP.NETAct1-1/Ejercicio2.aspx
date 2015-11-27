<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio2.aspx.cs" Inherits="ASP.NETAct1_1.Ejercicio2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
        <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" Width="20px" ImageUrl="~/punto-interrogativo1.png" OnClick="ImageButton1_Click" />
        <hr />
    </div>
        <asp:Label ID="LabelResultado" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
