<%@ Page Title="" Language="C#" MasterPageFile="~/Sjabloon.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GIP_Webshop.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    E-mail:&nbsp;&nbsp;
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    <br />
</p>
<p>
    Wachtwoord:&nbsp;&nbsp;
    <asp:TextBox ID="txtWW" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Button ID="btnAanmelden" runat="server" Text="Aanmelden" OnClick="btnAanmelden_Click" />
</p>
</asp:Content>
