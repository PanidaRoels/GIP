<%@ Page Title="" Language="C#" MasterPageFile="~/Sjabloon.Master" AutoEventWireup="true" CodeBehind="BeheerBestellingen.aspx.cs" Inherits="GIP_Webshop.BeheerBestellingen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Overzicht bestellingen<br />
    </p>
    <p>
        <asp:GridView ID="dgvbestellingen" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="BestellingsID" DataSourceID="dtsBestellingen" BackColor="White">
            <Columns>
                <asp:BoundField DataField="BestellingsID" HeaderText="BestellingsID" InsertVisible="False" ReadOnly="True" SortExpression="BestellingsID" />
                <asp:BoundField DataField="Datum" HeaderText="Datum" SortExpression="Datum" />
                <asp:BoundField DataField="Vervoerskosten" HeaderText="Vervoerskosten" SortExpression="Vervoerskosten" />
                <asp:BoundField DataField="KlantID" HeaderText="KlantID" SortExpression="KlantID" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="dtsBestellingen" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringCategorieen %>" ProviderName="<%$ ConnectionStrings:ConnectionStringCategorieen.ProviderName %>" SelectCommand="SELECT [BestellingsID], [Datum], [Vervoerskosten], [KlantID] FROM [tblBestellingen]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:Button ID="btnTerug" runat="server" BackColor="#CC0000" ForeColor="White" OnClick="btnTerug_Click" Text="TERUG NAAR HOME-PAGINA" />
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
