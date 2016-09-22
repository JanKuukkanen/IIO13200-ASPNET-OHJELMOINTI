<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DataTransfer.aspx.cs" Inherits="DataTransfer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Source Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Source Page</h1>
        Message to send: <asp:TextBox ID="txtMessage" runat="server" /><br />
        <asp:DropDownList ID="ddlMessages" runat="server"></asp:DropDownList>
    </div>
    </form>
</body>
</html>
