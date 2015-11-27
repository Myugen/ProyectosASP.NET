<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio3.aspx.cs" Inherits="ASP.NETAct1_1.Ejercicio3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatLayout="Flow" RepeatDirection="Vertical" AutoPostBack="True" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
            <asp:ListItem Text="Elemento 1"></asp:ListItem>
            <asp:ListItem Text="Elemento 2"></asp:ListItem>
            <asp:ListItem Text="Elemento 3"></asp:ListItem>
            <asp:ListItem Text="Elemento 4"></asp:ListItem>
            <asp:ListItem Text="Elemento 5"></asp:ListItem>
            <asp:ListItem Text="Elemento 6"></asp:ListItem>
        </asp:CheckBoxList>
        <hr />
        <asp:CheckBoxList ID="CheckBoxList2" runat="server" OnSelectedIndexChanged="CheckBoxList2_SelectedIndexChanged" AutoPostBack="True">
            <asp:ListItem Text="Distribución en tabla" Value="tabla"></asp:ListItem>
            <asp:ListItem Text="Horizontal" Value="horizontal"></asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <asp:Label ID="LabelResultado" runat="server" Text=""></asp:Label>
    </div>
        
    </form>
</body>
</html>
