<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AgregarRegistro.aspx.cs" Inherits="EXAMENFINAL.AgregarRegistro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="align">
        <h1>AGREGAR REGISTROS</h1>
        <div class="align">
            <table>
                <tr>
                    <td colspan="3"><h3>Propietario</h3></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbrut" runat="server" Text="RUT"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtRut" runat="server"></asp:TextBox></td>
                    <td style="text-align:left">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtRut" ErrorMessage="RequiredFieldValidator" ForeColor="Yellow">(*)</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtRut" ErrorMessage="RegularExpressionValidator" ForeColor="Yellow" ValidationExpression="^(\d{7,8})-[\dkK]$">(**)</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbnombre" runat="server" Text="NOMBRES"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtNombresP" runat="server"></asp:TextBox></td>
                    <td style="text-align:left">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNombresP" ErrorMessage="RequiredFieldValidator" ForeColor="Yellow">(*)</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbapellido" runat="server" Text="APELLIDOS"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtApellidosP" runat="server"></asp:TextBox></td>
                    <td style="text-align:left">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtApellidosP" ErrorMessage="RequiredFieldValidator" ForeColor="Yellow">(*)</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbtelefono" runat="server" Text="TELEFONO"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox></td>
                    <td style="text-align:left">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtTelefono" ErrorMessage="RequiredFieldValidator" ForeColor="Yellow">(*)</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtTelefono" ErrorMessage="RegularExpressionValidator" ForeColor="Yellow" ValidationExpression="\d{9}">(**)</asp:RegularExpressionValidator>
                    </td>
                </tr>
                
                <tr>
                    <td colspan="3">
                        <asp:Label ID="lblMascota" runat="server" Text="Label"><h3>Mascota</h3></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblNombreM" runat="server" Text="NOMBRE MASCOTA"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtNombreM" runat="server"></asp:TextBox></td>
                    <td style="text-align:left">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtNombreM" ErrorMessage="RequiredFieldValidator" ForeColor="Yellow">(*)</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbMascota" runat="server" Text="TIPO MASCOTA"></asp:Label></td><!-- DropDownList -->
                    <td>
                        <asp:DropDownList ID="ddlMascota" runat="server" DataSourceID="SqlDataSource1" DataTextField="Descripcion" DataValueField="Descripcion">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PetFunnyConnectionString %>" SelectCommand="SELECT [Descripcion] FROM [TipoMascota]"></asp:SqlDataSource>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblaloj" runat="server" Text="TIPO ALOJAMIENTO"></asp:Label></td><!-- DropDownList -->
                    <td>
                        <asp:DropDownList ID="ddlAlojamiento" runat="server" DataSourceID="SqlDataSource2" DataTextField="Descripcion" DataValueField="Descripcion">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PetFunnyConnectionString %>" SelectCommand="SELECT [Descripcion] FROM [TipoAlojamiento]"></asp:SqlDataSource>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbFecha" runat="server" Text="FECHA INGRESO"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtFechaI" runat="server"></asp:TextBox></td>
                    <td style="text-align:left">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtFechaI" ErrorMessage="RequiredFieldValidator" ForeColor="Yellow">(*)</asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtFechaI" ErrorMessage="Ingrese fecha correcta" OnServerValidate="CustomValidator1_ServerValidate">(**)</asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbDias" runat="server" Text="N° DIAS ALOJAMIENTO"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtDias" runat="server"></asp:TextBox></td>
                    <td style="text-align:left">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtDias" ErrorMessage="RequiredFieldValidator" ForeColor="Yellow">(*)</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtDias" ErrorMessage="RangeValidator" MaximumValue="365" MinimumValue="1">(**)</asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="lbMensaje" runat="server" ForeColor="Yellow"></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Button ID="AgregarReg" runat="server" Text="Agregar Registro" CssClass="btn" OnClick="Button1_Click" /><asp:Button ID="AgregarPro" runat="server" Text="Agregar Propietario" CssClass="btn" OnClick="AgregarPro_Click" CausesValidation="False" /><asp:Button ID="Button5" runat="server" Text="Volver" CssClass="btn" OnClick="Button5_Click" CausesValidation="False" /></td>
                </tr>
            </table>
         </div>
    </div>
</asp:Content>
