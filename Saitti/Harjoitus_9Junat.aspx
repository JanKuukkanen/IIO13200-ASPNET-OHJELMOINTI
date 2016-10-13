<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Harjoitus_9Junat.aspx.cs" Inherits="Harjoitus_9Junat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Harjoitus 9 - Junat</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <h2>Lähtevät junat</h2>

    <asp:DropDownList ID="ddlStations" runat="server"></asp:DropDownList>
    <asp:Button ID="btnDeparture" runat="server" Text="Hae lähtevät junat" OnClick="btnDeparture_Click" />

    <asp:GridView ID="gvTrains" runat="server"></asp:GridView>

    <asp:Label ID="lbAlert" runat="server" Text="" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>

