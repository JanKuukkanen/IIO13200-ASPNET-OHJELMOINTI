<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MoviesXML.aspx.cs" Inherits="MoviesXML" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #logo
        {
            width:100%;
            height:auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <!-- XMLDataSource määrittely -->
    <asp:XmlDataSource ID="srcMovies" runat="server" DataFile="~/App_Data/Movies.xml" XPath="//Movie"></asp:XmlDataSource>
    <!-- Gridview-kontrolli esittää datan -->
    <h1>Impressive Movie Database XML</h1>
    <asp:GridView ID="gvMovies" DataSourceID="srcMovies"
       HeaderStyle-Backcolor="Beige" HeaderStyle-ForeColor="Black"
        runat="server"></asp:GridView>
    <h1>Elokuvat listattuna</h1>
    <asp:Repeater ID="Repeater1" DataSourceID="srcMovies" runat="server">
        <HeaderTemplate>
            <table style="width:50%;" border="1">
                <tr>
                    <td>Name</td>
                    <td>Ohjaaja</td>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td><%# Eval("Name") %></td>
                <td><%# Eval("Director") %></td>
            </tr>

            <!--<p> <%# Eval("Name") %> Ohjaaja: <%# Eval("Director") %> </p>-->
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>

