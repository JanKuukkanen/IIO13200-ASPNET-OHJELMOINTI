<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Harjoitus_8FinnKino.aspx.cs" Inherits="Harjoitus_8FinnKino" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Harjoitus 8</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">

    <h1>Finnkinon elokuvat</h1>

    <asp:XmlDataSource ID="xdsTheatres" runat="server"></asp:XmlDataSource>
    <asp:XmlDataSource ID="xdsMovies" runat="server" DataFile="http://www.finnkino.fi/xml/Schedule/" ></asp:XmlDataSource>

    <asp:ListBox ID="listbTeatterit" runat="server" Height="500px" OnTextChanged="listbTeatterit_TextChanged" AutoPostBack="true" Style="float:left; background-color:aquamarine;" ></asp:ListBox><b />

    <div id="messageDiv" runat="server">
        
    </div> <br Style="clear:left;" />

    <asp:Label ID="lbMessage" runat="server" />
    <asp:Label ID="lbError" runat="server" />

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server" >
</asp:Content>

