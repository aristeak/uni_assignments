<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication5.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Η υπηρεσία επιστρέφει πληροφορίες για το στάδιο που επιλέγει ο χρήστης</h1>
            <br />
            <br />
            <asp:Label ID="stadiumlbl" runat="server" Text="Επιλέξτε στάδιο: "></asp:Label>
            &nbsp;
            <asp:DropDownList ID="stadiums" runat="server" AutoPostBack="True" OnSelectedIndexChanged="StadiumInfo"></asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="namelbl" runat="server" Text="Όνομα σταδίου: "></asp:Label> 
            &nbsp;&nbsp;&nbsp; 
            <asp:Label ID="name" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <asp:Label ID="seatslbl" runat="server" Text="Διαθέσιμες θέσεις: "></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="seats" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <asp:Label ID="townlbl" runat="server" Text="Πόλη: "></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="town" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="google" runat="server">Google url link</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="wiki" runat="server">Wikipedia</asp:HyperLink>
        </div>
    </form>
</body>
</html>
