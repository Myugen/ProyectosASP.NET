<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ExamenASP.NET_1.Ejercicio1.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Table ID="Table1" runat="server">
            <asp:TableRow>
                <asp:TableCell Font-Bold="true">Nombre de usuario:</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBoxNombre" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorNombre" runat="server" ErrorMessage="Por favor introducir el nombre de usuario/a" ControlToValidate="TextBoxNombre"></asp:RequiredFieldValidator><br />
                    <asp:RangeValidator ID="RangeValidatorNombre" runat="server" ErrorMessage="La longitud debe ser entre 6 y 15 caracteres" ControlToValidate="TextBoxNombre"></asp:RangeValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Font-Bold="true">Contraseña:</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBoxPassword" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ErrorMessage="Por favor introducir una contraseña válida"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Font-Bold="true">Confirmar la contraseña:</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBoxPasswordConfirm" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPasswordConfirm" runat="server" ErrorMessage="Por favor confirmar la contraseña"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidatorPasswordConfirm" runat="server"></asp:CompareValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Font-Bold="true">Edad:</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBoxEdad" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEdad" runat="server" ErrorMessage="Por favor introduzca su edad"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidatorEdad" runat="server" ControlToValidate="TextBoxEdad"></asp:CompareValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Font-Bold="true">Correo electrónico:</asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="Por favor introducir correo electrónico"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="TextBoxEmail" ValidationExpression="[\w]+@[\w]+\.(com|es|net|org|co\.th|go\.th|ac\.th|or\.th|go.\.th)"></asp:RegularExpressionValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell></asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="ButtonEnviar" runat="server" Text="Enviar" /></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
    </form>
    <asp:ValidationSummary ID="ValidationSummaryResultado" runat="server" HeaderText="Se ha detectado los siguientes errores:" />
</body>
</html>
