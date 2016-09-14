<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Harjoitus_01.aspx.cs" Inherits="Saitti_Harjoitus_01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Ikkunan tarjouslaskuri</title>
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="calculator">
        <div id="inputs" class="w3-green" style="height:120px;">
            <asp:Label ID="lblwidth" runat="server" Style="position:fixed; left:5px; top:0px;">Leveys(mm): </asp:Label> <asp:TextBox ID="txtwidth" runat="server" Style="position:fixed; left:190px; top:0px;"></asp:TextBox><br />
            <asp:Label ID="lblheight" runat="server" Style="position:fixed; left:5px; top:27px;">korkeus(mm): </asp:Label> <asp:TextBox ID="txtheight" runat="server" Style="position:fixed; left:190px; top:27px;"></asp:TextBox><br />
            <asp:Label ID="lblframe" runat="server" Style="position:fixed; left:5px; top:55px;">Karmipuun leveys(mm): </asp:Label> <asp:TextBox ID="txtframe" runat="server" Style="position:fixed; left:190px; top:55px; width:35px">45</asp:TextBox>
            <asp:Button ID="btncalculatePrice" runat="server" Text="Laske Tarjoushinta" Style="position:fixed; top:85px; left: 5px; width:150px" OnClick="btncalculatePrice_Click" />
        </div>
        <p>---------------------------------------------------------</p>
        <div id="results" class="w3-red" style="height:80px;">
            <asp:Label ID="lblwindowArea" runat="server" Style="margin-left:5px;">Ikkunan pinta-ala: </asp:Label> <asp:Label ID="lblwindowAreaResult" runat="server" Style="margin-left:56px">...</asp:Label><br />
            <asp:Label ID="lblframeRad" runat="server" Style="margin-left:5px;">Karmin piiri: </asp:Label> <asp:Label ID="lblframeRadResult" runat="server" Style="margin-left:103px;">...</asp:Label><br />
            <asp:Label ID="lblprice" runat="server" Style="margin-left:5px;">Tarjoushinta(Ilman ALV): </asp:Label> <asp:Label ID="lblpriceResult" runat="server" Style="margin-left:4px;">...</asp:Label>
        </div>
    </div>
    </form>
</body>
</html>
