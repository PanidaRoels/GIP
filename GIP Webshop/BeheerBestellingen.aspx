<%@ Page Title="" Language="C#" MasterPageFile="~/Sjabloon.Master" AutoEventWireup="true" CodeBehind="BeheerBestellingen.aspx.cs" Inherits="GIP_Webshop.BeheerBestellingen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Overzicht bestellingen<br />
    </p>
    <p>
        <asp:GridView ID="dgvbestellingen" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="BestellingsID" DataSourceID="dtsBestellingen" BackColor="White" OnSelectedIndexChanged="dgvbestellingen_SelectedIndexChanged" Font-Names="Arial">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="BestellingsID" HeaderText="BestellingsID" InsertVisible="False" ReadOnly="True" SortExpression="BestellingsID" />
                <asp:BoundField DataField="Datum" HeaderText="Datum" SortExpression="Datum" DataFormatString="{0:d}" />
                <asp:BoundField DataField="Vervoerskosten" HeaderText="Vervoerskosten" SortExpression="Vervoerskosten" />
                <asp:BoundField DataField="KlantID" HeaderText="KlantID" SortExpression="KlantID" />
            </Columns>
            <SelectedRowStyle BackColor="#CC0000" ForeColor="Black" />
        </asp:GridView>
        <asp:SqlDataSource ID="dtsBestellingen" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringCategorieen %>" ProviderName="<%$ ConnectionStrings:ConnectionStringCategorieen.ProviderName %>" SelectCommand="SELECT [BestellingsID], [Datum], [Vervoerskosten], [KlantID] FROM [tblBestellingen]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:GridView ID="dgvExtra" runat="server" AutoGenerateColumns="False" DataSourceID="dtsExtra" BackColor="White" Font-Names="Arial">
            <Columns>
                <asp:BoundField DataField="BestellingsID" HeaderText="BestellingsID" InsertVisible="False" SortExpression="BestellingsID" />
                <asp:BoundField DataField="Naam" HeaderText="Naam" SortExpression="Naam" />
                <asp:BoundField DataField="Eenheidsprijs" HeaderText="Eenheidsprijs" SortExpression="Eenheidsprijs" />
                <asp:BoundField DataField="Aantal" HeaderText="Aantal" SortExpression="Aantal" />
                <asp:BoundField DataField="Totaal" HeaderText="Totaal" ReadOnly="True" SortExpression="Totaal" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
        <asp:SqlDataSource ID="dtsExtra" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringCategorieen %>" ProviderName="<%$ ConnectionStrings:ConnectionStringCategorieen.ProviderName %>" SelectCommand="SELECT tblBestellingen.BestellingsID, tblProducten.Naam, tblProducten.Eenheidsprijs, tblHeeft.Aantal, tblProducten.Eenheidsprijs * tblHeeft.Aantal AS Totaal FROM ((tblBestellingen INNER JOIN tblHeeft ON tblBestellingen.BestellingsID = tblHeeft.BestellingsID) INNER JOIN tblProducten ON tblHeeft.ProductID = tblProducten.ProductID)"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
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
