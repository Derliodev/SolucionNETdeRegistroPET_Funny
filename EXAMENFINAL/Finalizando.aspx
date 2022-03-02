<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Finalizando.aspx.cs" Inherits="EXAMENFINAL.Finalizando" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="align">
        <h1>ESTADIAS</h1>
        <table>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Buscar por fecha" CausesValidation="False" CssClass="btn" /></td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Ver todas" CausesValidation="False" CssClass="btn" /></td>
                
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button4" runat="server" Text="Volver" CssClass="btn" OnClick="Button4_Click"/></td>
                
            </tr>
        </table>
    </div>
</asp:Content>
