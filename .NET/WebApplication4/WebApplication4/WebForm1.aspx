<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication4.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Δώστε μια IP διεύθυνση (στη μορφη x.x.x.x)"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="ipTx" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="ΔΕΣ ΤΗΝ ΧΩΡΑ ΤΗΣ IP ΔΙΕΥΘΥΝΣΗΣ"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="GET IP LOCATION" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Label ID="country1" runat="server" Text=""></asp:Label>
            &nbsp;<asp:LinkButton ID="LinkButton1" runat="server">δες την επόμενη υπηρεσία</asp:LinkButton>
        </div>
        <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
