<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Harjoitus_5LuoAsiakas.aspx.cs" Inherits="Harjoitus_5LuoAsiakas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Harjoitus 5 - Luo Asiakas</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <h1>Luo asiakas</h1>

    <div class="w3-container">
    <asp:Label ID="lbTunnus" runat="server" Text="astunnus" CssClass="w3-label" /> <asp:TextBox ID="txtTunnus" runat="server" CssClass="w3-input" /> <br />
    <asp:Label ID="lbNimi" runat="server" Text="asnimi" CssClass="w3-label" /> <asp:TextBox ID="txtNimi" runat="server" CssClass="w3-input" /> <br />
    <asp:Label ID="lbYhteysHlo" runat="server" Text="yhteyshlo" CssClass="w3-label" /> <asp:TextBox ID="txtYhteysHlo" runat="server" CssClass="w3-input" /> <br />
    <asp:Label ID="lbMaa" runat="server" Text="maa" CssClass="w3-label" /> <asp:DropDownList ID="ddlCountries" runat="server" CssClass="w3-dropdown-click w3-dropdown-hover"></asp:DropDownList> <br /><br />
    <asp:Label ID="lbPostiNro" runat="server" Text="postinro" CssClass="w3-label" /> <asp:TextBox ID="txtPostiNro" runat="server" CssClass="w3-input" /> <br />
    <asp:Label ID="lbPostiTmp" runat="server" Text="postitmp" CssClass="w3-label" /> <asp:TextBox ID="txtPostiTmp" runat="server" CssClass="w3-input" /> <br />
    <asp:Label ID="lbOstot" runat="server" Text="ostot" CssClass="w3-label" /> <asp:TextBox ID="txtOstot" runat="server" CssClass="w3-input" /> <br />
    <asp:Label ID="lbVuosi" runat="server" Text="asvuosi" CssClass="w3-label" /> <asp:TextBox ID="txtVuosi" runat="server" CssClass="w3-input" />
    </div>

    <div class="w3-container">
        <asp:Button ID="btnLuoAsiakas" runat="server" Text="Luo uusi asiakas" CssClass="w3-btn w3-margin-top" OnClick="btnLuoAsiakas_Click" /> 
        <a ID="linkHarjoitus5" href="Harjoitus_5DemoxOy.aspx" class="w3-text-light-blue">Takaisin</a> <br />
        <asp:Label ID="lbMessages" runat="server" Text="..." />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>

