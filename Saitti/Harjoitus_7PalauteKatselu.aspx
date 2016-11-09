<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Harjoitus_7PalauteKatselu.aspx.cs" Inherits="Harjoitus_7PalauteKatselu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div>
        <!-- Datasourcen määrittely -->
        <asp:XmlDataSource ID="srcKysely" DataFile="~/App_Data/Palaute.xml" runat="server"></asp:XmlDataSource>

        <asp:XmlDataSource ID="src" DataFile="~/App_Data/Palaute.xml" runat="server"></asp:XmlDataSource>

        <asp:Repeater ID="Repeater1" DataSourceID="srcKysely" runat="server">
            <HeaderTemplate>
                <table border="1">
                    <tr>
                        <td>Pvm</td>
                        <td>Nimi</td>
                        <td>Opittu</td>
                        <td>Haluan_oppia</td>
                        <td>Hyvää</td>
                        <td>Parannettavaa</td>
                        <td>Muuta</td>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><%# XPath("pvm") %></td>
                    <td><%# XPath("tekija") %></td>
                    <td><%# XPath("opittu") %></td>
                    <td><%# XPath("haluanoppia") %></td>
                    <td><%# XPath("hyvaa") %></td>
                    <td><%# XPath("parannettavaa") %></td>
                    <td><%# XPath("muuta") %></td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
                <br />
                <a href="Harjoitus_7Palaute.aspx">Takaisin</a>
            </FooterTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>

