<%@ Page Title="" Language="C#" MasterPageFile="~/Sjabloon.Master" AutoEventWireup="true" CodeBehind="BeheerProducten.aspx.cs" Inherits="GIP_Webshop.BeheerProducten" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Overzicht producten</p>
    <p>
        <asp:GridView ID="dgvProducten" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="dtsProducten" BackColor="White">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="Naam" HeaderText="Naam" SortExpression="Naam" />
                <asp:BoundField DataField="Eenheidsprijs" HeaderText="Eenheidsprijs" SortExpression="Eenheidsprijs" DataFormatString="{0:c}" />
                <asp:BoundField DataField="Voorraad" HeaderText="Voorraad" SortExpression="Voorraad" />
                <asp:BoundField DataField="Foto" HeaderText="Foto" SortExpression="Foto" />
                <asp:BoundField DataField="CategorieID" HeaderText="CategorieID" SortExpression="CategorieID" />
                <asp:BoundField DataField="Merk" HeaderText="Merk" SortExpression="Merk" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="dtsProducten" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringCategorieen %>" DeleteCommand="DELETE FROM [tblProducten] WHERE [ProductID] = ?" InsertCommand="INSERT INTO [tblProducten] ([ProductID], [Naam], [Eenheidsprijs], [Voorraad], [Foto], [CategorieID], [Merk]) VALUES (?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionStringCategorieen.ProviderName %>" SelectCommand="SELECT [ProductID], [Naam], [Eenheidsprijs], [Voorraad], [Foto], [CategorieID], [Merk] FROM [tblProducten]" UpdateCommand="UPDATE [tblProducten] SET [Naam] = ?, [Eenheidsprijs] = ?, [Voorraad] = ?, [Foto] = ?, [CategorieID] = ?, [Merk] = ? WHERE [ProductID] = ?">
            <DeleteParameters>
                <asp:Parameter Name="ProductID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductID" Type="Int32" />
                <asp:Parameter Name="Naam" Type="String" />
                <asp:Parameter Name="Eenheidsprijs" Type="Decimal" />
                <asp:Parameter Name="Voorraad" Type="Int32" />
                <asp:Parameter Name="Foto" Type="String" />
                <asp:Parameter Name="CategorieID" Type="Int32" />
                <asp:Parameter Name="Merk" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Naam" Type="String" />
                <asp:Parameter Name="Eenheidsprijs" Type="Decimal" />
                <asp:Parameter Name="Voorraad" Type="Int32" />
                <asp:Parameter Name="Foto" Type="String" />
                <asp:Parameter Name="CategorieID" Type="Int32" />
                <asp:Parameter Name="Merk" Type="String" />
                <asp:Parameter Name="ProductID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:Button ID="btnTerug" runat="server" BackColor="#CC0000" ForeColor="White" OnClick="btnTerug_Click" Text="TERUG NAAR HOME-PAGINA" />
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
