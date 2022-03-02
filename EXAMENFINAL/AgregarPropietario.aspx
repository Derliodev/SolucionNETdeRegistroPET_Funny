<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AgregarPropietario.aspx.cs" Inherits="EXAMENFINAL.AgregarPropietario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="align">
        <h1>AGREGAR PROPIETARIO</h1>
        <div class="align">
            <table>
                <tr>
                    <td colspan="3"><h3>Propietario</h3></td>
                </tr>
                <tr>
                    <td>RUT</td>
                    <td>
                        <asp:TextBox ID="txtRut" runat="server"></asp:TextBox></td>
                    <td style="text-align:left">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtRut" ErrorMessage="RequiredFieldValidator" ForeColor="Yellow">(*)</asp:RequiredFieldValidator>
                    
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtRut" ErrorMessage="RegularExpressionValidator" ForeColor="Yellow" ValidationExpression="^(\d{8})-[\dkK]$">(**)</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>NOMBRES</td>
                    <td>
                        <asp:TextBox ID="txtNombresP" runat="server"></asp:TextBox></td>
                    <td style="text-align:left">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNombresP" ErrorMessage="RequiredFieldValidator" ForeColor="Yellow">(*)</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>APELLIDOS</td>
                    <td>
                        <asp:TextBox ID="txtApellidosP" runat="server"></asp:TextBox></td>
                    <td style="text-align:left">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtApellidosP" ErrorMessage="RequiredFieldValidator" ForeColor="Yellow">(*)</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>TELEFONO</td>
                    <td>
                        <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox></td>
                    <td style="text-align:left">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtTelefono" ErrorMessage="RequiredFieldValidator" ForeColor="Yellow">(*)</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtTelefono" ErrorMessage="RegularExpressionValidator" ForeColor="Yellow" ValidationExpression="\d{9}">(**)</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:button runat="server" text="Agregar Propietario" CssClass="btn" />
                        <asp:button runat="server" text="Volver" CausesValidation="False" CssClass="btn" OnClick="Unnamed2_Click" />
                    </td>
                </tr>
            </table>
         </div>
    </div>
</asp:Content>
