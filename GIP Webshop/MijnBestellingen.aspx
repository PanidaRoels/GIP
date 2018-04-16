<%@ Page Title="" Language="C#" MasterPageFile="~/Sjabloon.Master" AutoEventWireup="true" CodeBehind="MijnBestellingen.aspx.cs" Inherits="GIP_Webshop.MijnBestellingen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Mijn bestellingen</p>
    <p>
        <asp:GridView ID="dgvBestellingen" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="BestellingsID" DataSourceID="dtsBestellingen" BackColor="White" BorderColor="White" OnSelectedIndexChanged="dgvBestellingen_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="BestellingsID" HeaderText="BestellingsID" InsertVisible="False" ReadOnly="True" SortExpression="BestellingsID" />
                <asp:BoundField DataField="Datum" HeaderText="Datum" SortExpression="Datum" />
                <asp:BoundField DataField="Vervoerskosten" HeaderText="Vervoerskosten" SortExpression="Vervoerskosten" />
                <asp:BoundField DataField="KlantID" HeaderText="KlantID" SortExpression="KlantID" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
        <asp:SqlDataSource ID="dtsBestellingen" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringCategorieen %>" ProviderName="<%$ ConnectionStrings:ConnectionStringCategorieen.ProviderName %>" SelectCommand="SELECT [BestellingsID], [Datum], [Vervoerskosten], [KlantID] FROM [tblBestellingen] WHERE ([KlantID] = ?)">
            <SelectParameters>
                <asp:SessionParameter Name="KlantID" SessionField="KlantID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:GridView ID="dgvHeeft" runat="server" AutoGenerateColumns="False" DataSourceID="dtsHeeft">
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
        <asp:SqlDataSource ID="dtsHeeft" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringCategorieen %>" ProviderName="<%$ ConnectionStrings:ConnectionStringCategorieen.ProviderName %>" SelectCommand="SELECT tblBestellingen.BestellingsID, tblProducten.Naam, tblProducten.Eenheidsprijs, tblHeeft.Aantal, tblProducten.Eenheidsprijs * tblHeeft.Aantal AS Totaal FROM ((tblBestellingen INNER JOIN tblHeeft ON tblBestellingen.BestellingsID = tblHeeft.BestellingsID) INNER JOIN tblProducten ON tblHeeft.ProductID = tblProducten.ProductID)"></asp:SqlDataSource>
    </p>
    <p>
        Totale kost van de bestelling + vervoerskosten: <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        <asp:Button ID="btnTerug" runat="server" BackColor="#CC0000" ForeColor="White" Text="TERUG NAAR EIGEN PROFIEL" OnClick="btnTerug_Click" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
