﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HelloIlta.aspx.cs" Inherits="HelloIlta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hello Evening Stars</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Hello</h1>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:Button ID="BtnSayHello" runat="server" Text="Tervehdi" OnClick="BtnSayHello_Click" /><br />
        <asp:Label ID="lblMessage" runat="server">...</asp:Label>
        <div id="divHello" runat="server">...</div>
    </div>
    </form>
</body>
</html>
