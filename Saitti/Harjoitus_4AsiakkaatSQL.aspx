<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Harjoitus_4AsiakkaatSQL.aspx.cs" Inherits="Harjoitus_4AsiakkaatSQL" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <h2>Asiakkaat</h2>
    <asp:Button ID="btnCustomersSql" runat="server" Text="Hae Asiakkaat SQLDataSourcella" OnClick="btnCustomersSql_Click" />
    <asp:Button ID="btnCustomersDB" runat="server" Text="Hae asiakkaat luokan avulla" OnClick="btnCustomersDB_Click" />
    
    <asp:SqlDataSource ID="srcCustomerSQL" runat="server" ConnectionString="<%$ ConnectionStrings:DemoxOyAsiakkaat %>" 
        SelectCommand="SELECT [astunnus], [asnimi], [yhteyshlo], [postitmp] FROM [asiakas]"></asp:SqlDataSource>

    <asp:GridView ID="gvCustomers" runat="server"></asp:GridView>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
    <asp:Label ID="lblCustomerMsg" runat="server" />
</asp:Content>

