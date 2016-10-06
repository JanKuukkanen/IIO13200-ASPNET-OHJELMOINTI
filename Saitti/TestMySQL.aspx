<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TestMySQL.aspx.cs" Inherits="TestMySQL" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <h2>SQLDataSourcen avulla</h2>
    <asp:SqlDataSource ID="srcMysli" runat="server"
        ConnectionString="<%$ ConnectionStrings:Mysli %>"
        ProviderName="MySql.Data.MySqlClient"
        SelectCommand="SELECT * FROM Pelaaja"
        DeleteCommand="DELETE FROM Pelaaja Where PelaajaID=@PelaajaID"
        UpdateCommand="UPDATE Pelaaja SET Nimi=@Nimi, Seura=@Seura, Pelipaikka=@Pelipaikka, Nro=@nro, Maalit=@Maalit, Syotot=@Syotot WHERE (PelaajaID=@PelaajaID)" />
    <asp:GridView ID="gvPlayers" runat="server" DataSourceID="srcMysli" >
        <Columns>
            <asp:CommandField ShowEditButton="True" />
        </Columns>
    </asp:GridView>

    <h2>Kaupungit luokan metodin avulla</h2>
    <asp:Button ID="btnGetCities" runat="server" Text="Hae kaupungit Mysql:llä" OnClick="btnGetCities_Click" />
    <asp:GridView ID="gvCities" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
    <asp:Label ID="lblMessages" runat="server" />
</asp:Content>