<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="ΠΛΗΡΟΦΟΡΙΕΣ ΧΩΡΑΣ"></asp:Label>

            <br />
            <asp:Label ID="Country" runat="server" Text="Χώρα: "></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="ServiceCall" AutoPostBack="true"></asp:DropDownList>

            <br />

            <asp:Label ID="ICode" runat="server" Text="Iso Code:"></asp:Label>
            <asp:Label ID="IsoCode" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="Prwt" runat="server" Text="Πρωτεύουσα:"></asp:Label>
            <asp:Label ID="Town" runat="server" Text=""></asp:Label>
            <br />
            <asp:Image ID="Image1" runat="server" />
            <br />
            <asp:Label ID="Code" runat="server" Text="Κώδικας Διεθνούς Κλήσης:"></asp:Label>
            <asp:Label ID="NoCode" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="CurrencyLabel" runat="server" Text="Νόμισμα Χώρας: "></asp:Label>
            <asp:Label ID="Currency" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="LanguageLabel" runat="server" Text="Γλώσσα Χώρας: "></asp:Label>
            <asp:Label ID="Language" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <!--<asp:Button ID="Button1" runat="server" Text="΄Κλήση Υπηρεσίας" OnClick="ServiceCall"/>-->
        </div>
    </form>
</body>
</html>
