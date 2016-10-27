<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Lokalisointi.aspx.cs" Inherits="Lokalisointi" meta:resourcekey="PageResource1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <h1>
    <asp:Literal ID="ltHello" runat="server" meta:resourcekey="ltHelloResource1"></asp:Literal>
        Tänään on <% =DateTime.Today.ToShortDateString() %>
    </h1>
    <div class="w3-container">
        <asp:Label ID="lblHello" runat="server" Text="Tähän vaihtuva teksti" meta:resourcekey="lblHelloResource1" />
        <asp:Image runat="server" ImageUrl="<%$ Resources:Lippu %>" Width="100" />

        <asp:Button ID="btnSayHello" runat="server" Text="<%$ Resources:Buttoseen %>" OnClick="btnSayHello_Click" />

        <asp:Label ID="lblMessage" runat="server" />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>

