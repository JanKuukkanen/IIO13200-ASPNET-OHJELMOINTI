<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Harjoitus_5DemoxOy.aspx.cs" Inherits="Harjoitus_5DemoxOy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Harjoitus 5 DemoxOy</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <h1>DemoxOy Asiakkaat</h1>
    <div class="w3-row">
        <div class="w3-container">
            <asp:Button ID="btnGetAllCustomers" runat="server" Text="Hae kaikki asiakkaat" OnClick="btnGetAllCustomers_Click" /> 
            <asp:DropDownList ID="ddlCountries" runat="server" />
            <asp:Button ID="btnGetCustomersByCountry" runat="server" Text="Hae asiakkaat valitusta maasta" OnClick="btnGetCustomersByCountry_Click" />
            <asp:Button ID="btnGetCustomersSortedByCountry" runat="server" Text="Hae Asiakkaat maittain" OnClick="btnGetCustomersSortedByCountry_Click" />
            <a ID="linkCreateNewCustomer" href="Harjoitus_5LuoAsiakas.aspx" class="w3-text-light-blue">Luo uusi asiakas</a>
        </div>
        <div class="w3-container">
            <asp:GridView ID="gvCustomers" runat="server"></asp:GridView>
        </div>
    </div>
    <div class="w3-row">
        <asp:Label ID="lbMessages" runat="server" Text="..." />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>

