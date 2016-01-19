<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Indice.aspx.cs" Inherits="ASP.NETAct2.Ejercicio_1.Indice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table border="1" style="width: 100%;">
            <tr>
                <td>
                    <asp:Label ID="LabelCadena1" runat="server" Text="Cadena 1:"></asp:Label><br />
                    <asp:TextBox ID="TextBoxCadena1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="LabelComparar" runat="server" Text="Comparar cadenas de texto:"></asp:Label><br />
                    <asp:ListBox ID="ListBoxComparar" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ListBoxComparar_SelectedIndexChanged">
                        <asp:ListItem Selected="True" Value="0">Igual (=)</asp:ListItem>
                        <asp:ListItem Value="1">Distinto (!=)</asp:ListItem>
                        <asp:ListItem Value="2">Mayor (&gt;)</asp:ListItem>
                        <asp:ListItem Value="3">Mayor igual (&gt;=)</asp:ListItem>
                        <asp:ListItem Value="4">Menor (&lt;)</asp:ListItem>
                        <asp:ListItem Value="5">Menor igual (&lt;=)</asp:ListItem>
                    </asp:ListBox>
                </td>
                <td>
                    <asp:Label ID="LabelCadena2" runat="server" Text="Cadena 2:"></asp:Label><br />
                    <asp:TextBox ID="TextBoxCadena2" runat="server"></asp:TextBox>
                </td>
            </tr>
        </tabl>
    </div>
    </form>
        </div>
        <asp:Literal ID="LiteralResultado" runat="server"></asp:Literal>
</body>
</html>
