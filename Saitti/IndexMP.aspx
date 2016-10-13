<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>IIO13200 .NET Ohjelmointi</title>
    <link href="CSS/demo.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div>
        <h1>IIO13200. NET Ohjelmointi</h1>
        <h2>Tunti Demot</h2>
        <p>Lorum ipsum ja niinpoispäin...</p>
        <h3>Perus HTML kontrolleja</h3>
        <a href="TestiAamu.html">Testi html-sivu (aamu)</a>
        <p>
            Esimerkki ASP.NET DataKontrollista
            <asp:HyperLink ID="hlASP" runat="server" NavigateUrl="~/ShowPhotos.aspx">Show Photos</asp:HyperLink>
        </p>
        <p>
            Esimerkki kuinka koodissa rakennetaan HTML:ää
            <asp:HyperLink ID="hlHTML" runat="server" NavigateUrl="~/ShowCustomers.aspx">Show WineCustomers</asp:HyperLink>
        </p>
        <p>
            Data Transfer - demo
            <asp:HyperLink ID="hlTransfer" runat="server" NavigateUrl="~/DataTransfer.aspx">Data Transfer</asp:HyperLink>
        </p>
        <p>
            Ford Mustang sivu (MasterPage test)
            <asp:HyperLink ID="hlMustang" runat="server" NavigateUrl="~/MasterPage_test.aspx">Ford Mustang</asp:HyperLink>
        </p>
        <p>
            Datasource ja Repeater
            <asp:HyperLink ID="hlXML" runat="server" NavigateUrl="~/MoviesXML.aspx">XML</asp:HyperLink>
            <asp:HyperLink ID="hlSQL" runat="server" NavigateUrl="~/MoviesSQL.aspx">SQL</asp:HyperLink>
        </p>
        <p>
            ADO.NET ja Json
            <asp:HyperLink ID="hlDemoJson" runat="server" NavigateUrl="~/DemoJson.aspx">JSON Demo</asp:HyperLink>
        </p>
    </div>

    <div>
        <h2>Harjoitukset</h2>

        <p>
            Harjoitus 1: Ikkunan tarjouslaskuri
            <asp:HyperLink ID="hlWindow" runat="server" NavigateUrl="~/Harjoitus_01.aspx">Harjoitus 1</asp:HyperLink>
        </p>
        <p>
            Harjoitus 2: Lottorivien arvonta
            <asp:HyperLink ID="hlLotto" runat="server" NavigateUrl="~/Harjoitus_2Lotto.aspx">Harjoitus 2</asp:HyperLink>
        </p>
        <p>
            Harjoitus 3: Kalenteri
            <asp:HyperLink ID="hlCalendar" runat="server" NavigateUrl="~/Harjoitus_3Kalenteri.aspx">Harjoitus 3</asp:HyperLink>
        </p>
        <p>
            Harjoitus 4: Asiakkaat SQL palvelimelta
            <asp:HyperLink ID="hlCustomers" runat="server" NavigateUrl="~/Harjoitus_4AsiakkaatSQL.aspx">Harjoitus 4</asp:HyperLink>
        </p>
    </div>
</asp:Content>
