<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="EXAMENFINAL.Inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align:center; font-size: 24px;">
        <asp:Label ID="saludo" runat="server"></asp:Label> <asp:Button ID="Button1" runat="server" Text="Logout" OnClick="Button1_Click" CssClass="btn" /><br /><br />
    </div>
    <div class="align">
        <asp:Button ID="Button2" runat="server" Text="Ver Registros" CssClass="btn" OnClick="Button2_Click" /><asp:Button ID="Button3" runat="server" Text="Crear Registros" CssClass="btn" OnClick="Button3_Click" /><asp:Button ID="Button4" runat="server" Text="Estadias por finalizar" CssClass="btn" OnClick="Button4_Click" />
    </div>
</asp:Content>
