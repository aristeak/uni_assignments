<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Lab3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>EURO 2020</h1>
            <asp:DropDownList ID="teamlist" runat="server" AutoPostBack="true" OnSelectedIndexChanged="Change">
            </asp:DropDownList>
            <br />
            <asp:Label ID="playerslabel" runat="server" Text="Οι παίκτες της ομάδας" Visible="False"></asp:Label>
            <asp:Label ID="playersnumber" runat="server" Text="" Visible="False"></asp:Label>
            <br />            
            <asp:DropDownList ID="playerslist" runat="server" AutoPostBack="true" Visible="False">
            </asp:DropDownList>
            <br />
            <asp:Label ID="noselectedplayerslabel" runat="server" Text="Μη επιλεγμένοι παίκτες" Visible="False"></asp:Label>
            <asp:Label ID="noselectedplayersnumber" runat="server" Text="" Visible="False"></asp:Label>
            <br />
            <asp:DropDownList ID="noselectedplayerslist" runat="server" AutoPostBack="true" Visible="False">
            </asp:DropDownList>
        </div>
    </form>
</body>
</html>
