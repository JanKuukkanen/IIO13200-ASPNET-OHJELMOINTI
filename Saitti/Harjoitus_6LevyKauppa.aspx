<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Harjoitus_6LevyKauppa.aspx.cs" Inherits="Harjoitus_06LevyKauppa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Harjoitus 6</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <h1>Levykauppa X</h1>

    <!-- XML datasourcen määrittely -->
    <asp:XmlDataSource ID="xsrcLevyt" DataFile="~/App_Data/LevykauppaX.xml" XPath="Records/genre[@name='Pop']/record" runat="server" ></asp:XmlDataSource>

    <asp:Repeater ID="Repeater3" DataSourceID="xsrcLevyt" runat="server">
            <HeaderTemplate>
                <table border="0">
                    <tr></tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><img alt="kansikuva" src='<%# "Images/" + Eval("ISBN") + ".jpg" %>' /></td>
                    <td>
                        <h2> <%# Eval("Artist") %> : <%# Eval("Title") %></h2><br />

                        <b>ISBN: <a href="Harjoitus_6Levytiedot.aspx?ISBN=<%# Eval("ISBN") %>"><%# Eval("ISBN") %></a> </b> <br />

                        <b>Hinta: <%# Eval("Price") %></b>
                   

                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
    </asp:Repeater>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>

