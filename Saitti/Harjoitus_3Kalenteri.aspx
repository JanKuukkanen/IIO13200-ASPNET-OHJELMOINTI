<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Harjoitus_3Kalenteri.aspx.cs" Inherits="Harjoitus_3Kalenteri" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3>Select a date</h3>
        <asp:Button ID="btnLastYear" runat="server" Text="<Year" OnClick="btnLastYear_Click" /><asp:Button ID="btnNextYear" runat="server" Text="Year>" OnClick="btnNextYear_Click" />
        <asp:Calendar ID="CalDay" runat="server" SelectionMode="Day" OnSelectionChanged="CalDay_SelectionChanged">

        </asp:Calendar><br />
        <p>
            <asp:Label ID="lbToday" Text="Today's date: " runat="server" /> <asp:Label ID="lbSelectedToday" Text="..." runat="server"></asp:Label><br />
            <asp:Label ID="lbChosenDay" Text="Chosen date: " runat="server" /> <asp:Label ID="lbSelectedDay" Text="..." runat="server"></asp:Label><br />
            <asp:Label ID="lbTimeDifference" Text="Difference between dates: " runat="server" /> <asp:Label ID="lbErotus" Text="..." runat="server"></asp:Label>
        </p>
    </div>
    </form>
</body>
</html>
