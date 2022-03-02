<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Propietario.aspx.cs" Inherits="EXAMENFINAL.Propietario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="align">
        <h1>PROPIETARIOS</h1>
        <div class="align">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Rut"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Propietarios" DataTextField="Rut" DataValueField="Rut" ></asp:DropDownList>
                        <asp:SqlDataSource ID="Propietarios" runat="server" ConnectionString="<%$ ConnectionStrings:PetFunnyConnString %>" SelectCommand="SELECT [Rut] FROM [Propietario]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="txtMsg" runat="server" ForeColor="Yellow" ></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="Agregar Registro" CssClass="btn" OnClick="Button1_Click" /></td>
                    
                </tr>
                <tr>
                    <td colspan="2"><asp:Button ID="Button2" runat="server" Text="Agregar Propietario" CssClass="btn" OnClick="Button2_Click1" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button3" runat="server" Text="Volver" CssClass="btn" OnClick="Button3_Click" /></td>
                </tr>
            </table>
         </div>
    </div>
    
</asp:Content>
