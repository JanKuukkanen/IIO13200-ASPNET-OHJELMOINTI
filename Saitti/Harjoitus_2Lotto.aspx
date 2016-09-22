<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Harjoitus_2Lotto.aspx.cs" Inherits="Saitti_Harjoitus_2Lotto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lotto 2016</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblLottery" runat="server" Text="Choose lottery type:" Style="vertical-align:middle;"></asp:Label>
        <asp:DropDownList ID="ddlLottery" runat="server" Style="vertical-align:middle; margin-left:20px;" OnSelectedIndexChanged="Page_Load"></asp:DropDownList><br />
        <asp:Label ID="lblDraws" runat="server" Text="Number of draws:" Style="vertical-align:middle; padding-top:20px;"></asp:Label>
        <asp:TextBox ID="txtDraws" runat="server" Style="vertical-align:middle; margin-left:20px;"></asp:TextBox><br />
        <asp:Button ID="btnDraws" runat="server" Text="Draw" OnClick="btnDraws_Click" />
        <asp:Button ID="Clear" runat="server" Text="Clear" Style="margin-left:10px;" OnClick="Clear_Click"/><br /><br />
        <asp:Label ID="lblNumbers" runat="server" Text="Randomly drawn numbers: "></asp:Label><br />
        <asp:ListBox ID="lsbNumbers" runat="server"></asp:ListBox><br />
    </div>
    <div style="margin-top:20px;">
        <asp:Label ID="lblAlert" runat="server" Text="..."></asp:Label>
    </div>
    </form>
</body>
</html>
