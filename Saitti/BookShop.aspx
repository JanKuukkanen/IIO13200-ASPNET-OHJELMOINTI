<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BookShop.aspx.cs" Inherits="BookShop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <h1>Kirjakauppa X</h1>
    <div class="w3-row">
        <!-- Vasen lohko: asiakkaat -->
        <div class="w3-container w3-third">
            <asp:Button ID="btnGetCustomers" runat="server" Text="Hae asiakkaat" CssClass="w3-btn" OnClick="btnGetCustomers_Click" />
            <asp:DropDownList ID="ddlCustomers" runat="server" OnSelectedIndexChanged="ddlCustomers_SelectedIndexChanged" AutoPostBack="True" />
            <p>Etunimi: <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></p>
            <p>Sukunimi: <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></p>
            <asp:Button ID="btnCreateCustomer" runat="server" Text="Luo uusi" CssClass="w3-btn" OnClick="btnCreateCustomer_Click" />
            <asp:Button ID="btnSaveCustomer" runat="server" Text="Tallenna" CssClass="w3-btn" OnClick="btnSaveCustomer_Click" />
            <asp:Button ID="btnDeleteCustomer" runat="server" Text="Poista" CssClass="w3-btn" OnClick="btnDeleteCustomer_Click" />
            <asp:GridView ID="gvCustomers" runat="server" />
        </div>

        <!-- Oikea lohko: kirjat -->
        <div class="w3-container w3-twothird">
            <asp:Button ID="btnGetBoks" runat="server" Text="Hae kirjat" CssClass="w3-btn" OnClick="btnGetBoks_Click" />
            <asp:GridView ID="gvBooks" runat="server" />
        </div>
    </div>
    <div class="w3-row">
        <asp:Literal ID="ltResult" runat="server" />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
    <asp:Label ID="lblMessages" runat="server" />
</asp:Content>

