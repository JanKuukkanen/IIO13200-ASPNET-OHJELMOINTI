<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MoviesSQL.aspx.cs" Inherits="MoviesSQL" %>

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
    <!-- DataSource Määrittely -->
    <asp:SqlDataSource ID="srcMovies" runat="server"
        ConnectionString="<%$ ConnectionStrings:Movies %>" 
        SelectCommand="SELECT [title], [director], [year], [url] FROM [Movies] ORDER BY [title]"></asp:SqlDataSource>
    <!-- GV-kontrolli esittää datan -->
    <h1>Impressive Movie Database SQL</h1>
    <asp:GridView ID="gvMovies" DataSourceID="srcMovies"
       HeaderStyle-Backcolor="Beige" HeaderStyle-ForeColor="Black"
        runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:BoundField DataField="director" HeaderText="director" SortExpression="director" />
            <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
        </Columns>
<HeaderStyle BackColor="Beige" ForeColor="Black"></HeaderStyle>
    </asp:GridView>
    <!-- Elokuvien posterit näkyviin repeaterin avulla -->
    <asp:Repeater ID="rpMovies" runat="server" DataSourceID="srcMovies">
        <ItemTemplate>
            <h3><%# Eval("title") %></h3>
            <img src="<%# Eval("url") %>" alt="Kuva puuttuu" Style="width:200px;" />
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>

