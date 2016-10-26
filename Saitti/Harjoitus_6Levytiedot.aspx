<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Harjoitus_6Levytiedot.aspx.cs" Inherits="Harjoitus_6Levytiedot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Harjoitus 6</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">

    <h1>Levykauppa X</h1>

    <asp:XmlDataSource ID="xsrcLevyt" DataFile="~/App_Data/LevykauppaX.xml" runat="server"></asp:XmlDataSource>

    <asp:XmlDataSource ID="xsrcBiisit" DataFile="~/App_Data/LevykauppaX.xml" runat="server"></asp:XmlDataSource>

    <asp:Repeater ID="Repeater1" DataSourceID="xsrcLevyt" runat="server">
        <ItemTemplate>
            <tr>
                <td><img alt="kansikuva" src='<%# "Images/" + Eval("ISBN") + ".jpg" %>' /></td>
                <td>
                    <h2> <%# Eval("Artist") %> : <%# Eval("Title") %></h2><br />
                        <b>ISBN:</b> <%# Eval("ISBN") %> <br />
                        <b>Hinta: <%# Eval("Price") %></b>
                </td>
            </tr>
        </ItemTemplate>

    </asp:Repeater>

    <asp:Repeater ID="Repeater2" DataSourceID="xsrcBiisit" runat="server">
        <HeaderTemplate>
            <b>Levyn Biisit: </b> <br />
        </HeaderTemplate>
        <ItemTemplate>
            <%# Eval("name") %> <br />
        </ItemTemplate>
        <FooterTemplate>
            <br />
            <a href="Harjoitus_6LevyKauppa.aspx">Takaisin</a>
        </FooterTemplate>
    </asp:Repeater>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>

