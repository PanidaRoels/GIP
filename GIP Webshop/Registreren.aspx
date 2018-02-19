<%@ Page Title="" Language="C#" MasterPageFile="~/Sjabloon.Master" AutoEventWireup="true" CodeBehind="Registreren.aspx.cs" Inherits="GIP_Webshop.Registreren" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        REGISTREREN</p>
    <p>
        Naam:&nbsp;
        <asp:TextBox ID="txtNaam" runat="server"></asp:TextBox>
    </p>
    <p>
        Voornaam:&nbsp;
        <asp:TextBox ID="txtVoornaam" runat="server"></asp:TextBox>
    </p>
    <p>
        Adres:&nbsp;
        <asp:TextBox ID="txtAdres" runat="server"></asp:TextBox>
    </p>
    <p>
        Gemeente:&nbsp;
        <asp:TextBox ID="txtGemeente" runat="server"></asp:TextBox>
    </p>
    <p>
        Postcode:&nbsp;
        <asp:TextBox ID="txtPostcode" runat="server"></asp:TextBox>
    </p>
    <p>
        E-mail:&nbsp;
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    </p>
    <p>
        Wachtwoord:&nbsp;
        <asp:TextBox ID="txtWW" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnReg" runat="server" OnClick="btnReg_Click" Text="Registreren" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnAnnuleren" runat="server" OnClick="btnAnnuleren_Click" Text="Annuleren" />
    </p>
</asp:Content>
