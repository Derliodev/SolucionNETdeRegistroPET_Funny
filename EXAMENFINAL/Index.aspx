<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="EXAMENFINAL.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="align">
        <h1>Ingreso de Usuarios</h1>
        <table>
            <tr>
                <td style="text-align:left">Usuario</td>
                <td><asp:TextBox ID="txtId" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtId" ForeColor="Yellow" Text="Obligatorio"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="text-align:left">Contraseña</td>
                <td><asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtPass" ForeColor="Yellow">Obligatorio</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2" style="text-align:center"><asp:Label ID="lblMensaje" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td colspan="3" style="text-align:center"><asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn" OnClick="Button1_Click" CausesValidation="False" /></td>
            </tr>
        </table>
    </div>
</asp:Content>
