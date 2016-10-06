<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DemoJson.aspx.cs" Inherits="DemoJson" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <asp:Button ID="btnGet" runat="server" Text="Hae JSON-teksti" OnClick="btnGet_Click" />
    <asp:Button ID="btnGetPerson" runat="server" Text="Hae JSON ja muuta olioksi" OnClick="btnGetPerson_Click" />
    <asp:Button ID="btnGetPolitics" runat="server" Text="Hae JSON ja muuta oliokokoelmaksi" OnClick="btnGetPolitics_Click" />

    <asp:Literal ID="ltResult" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>

