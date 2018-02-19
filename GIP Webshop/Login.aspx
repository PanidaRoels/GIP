<%@ Page Title="" Language="C#" MasterPageFile="~/Sjabloon.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GIP_Webshop.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Login ID="lgnAanmelden" runat="server" OnAuthenticate="Login1_Authenticate" UserNameLabelText="E-mail:" Width="244px">
        </asp:Login>
    <br />
</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
</asp:Content>
