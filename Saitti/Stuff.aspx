<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Stuff.aspx.cs" Inherits="Stuff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">

    <asp:SqlDataSource ID="sqldsStuff" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Oppilaat %>" 
        DeleteCommand="DELETE FROM [testi] WHERE [id] = @original_id" 
        InsertCommand="INSERT INTO [testi] ([name], [description]) VALUES (@name, @description)" OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT [id], [name], [description] FROM [testi]" 
        UpdateCommand="UPDATE [testi] SET [name] = @name, [description] = @description WHERE [id] = @original_id">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="description" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="original_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="sqldsOptimistic" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Oppilaat %>" DeleteCommand="DELETE FROM [testi] WHERE [id] = @original_id AND [name] = @original_name AND [description] = @original_description" InsertCommand="INSERT INTO [testi] ([name], [description]) VALUES (@name, @description)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [id], [name], [description] FROM [testi]" UpdateCommand="UPDATE [testi] SET [name] = @name, [description] = @description WHERE [id] = @original_id AND [name] = @original_name AND [description] = @original_description">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_description" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="description" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_description" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <h1 class="w3-container w3-indigo">Stuffeja maailmalta</h1>
    <div class="w3-row">
        <!-- Vasemman puoleinen esittää kaikki stuffit -->
        <div class="w3-container w3-half">
            <asp:GridView ID="gvStuff" runat="server" DataSourceID="sqldsOptimistic" OnSelectedIndexChanged="gvStuff_SelectedIndexChanged" 
                AutoGenerateColumns="False" DataKeyNames="id">

                <Columns>
                    <asp:ButtonField CommandName="select" DataTextField="id" HeaderText="id" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                </Columns>
            </asp:GridView>
        </div>

        <!-- Oikean puoleinen valitun stuffin muokkaus -->
        <div class="w3-container w3-half">
            <h2 class="w3-container w3-blue"> Valittu: 
                <asp:Literal ID="myStuff" runat="server" /></h2>
            <asp:DetailsView ID="dvStuff" runat="server" Height="50px" Width="125px" DataSourceID="sqldsOptimistic" AutoGenerateRows="False" DataKeyNames="id">
                <Fields>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" SortExpression="id" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>

