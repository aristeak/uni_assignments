<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Μετατροπή συναλλάγματος"></asp:Label>
            <br />
            <asp:Label ID="lstCurFromLb" runat="server" Text="Δώστε νόμισμα προέλευσης"></asp:Label>
            &nbsp;<asp:TextBox ID="originTb" runat="server"></asp:TextBox>
            <asp:DropDownList ID="lstCurFrom" runat="server" AutoPostBack="True"> 
            </asp:DropDownList>
            <br />
            <asp:Label ID="lstCurToLb" runat="server" Text="Δώστε νόμισμα προορισμού"></asp:Label>
            &nbsp;
            <asp:DropDownList ID="lstCurTo" runat="server" AutoPostBack="True" >
            </asp:DropDownList>
            &nbsp;
            <br />
            <br />
            <asp:Button ID="convertBt" runat="server" Text="Μετατροπή" OnClick="Button1_Click"/>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Αποτέλεσμα:"></asp:Label>
            <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
