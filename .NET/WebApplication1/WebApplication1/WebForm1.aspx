<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #FF0000;
        }

        .auto-style2 {
            width: 42%;
            height: 661px;
        }
        .auto-style7 {
            width: 273px;
            height: 37px;
        }
        .auto-style8 {
            width: 490px;
            height: 336px;
            margin-bottom: 0px;
        }
        .auto-style9 {
            width: 52px;
            height: 272px;
        }
        .auto-style10 {
            width: 273px;
            height: 272px;
        }
        .auto-style11 {
            height: 37px;
            width: 52px;
        }
        .auto-style12 {
            width: 52px;
            height: 271px;
        }
        .auto-style13 {
            width: 273px;
            height: 271px;
        }
        .auto-style14 {
            width: 486px;
            height: 294px;
            margin-bottom: 0px;
        }
        .auto-style15 {
            width: 478px;
            height: 294px;
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" title="SOS" style="background-color: #C0C0C0">
        <div>
            <h1 class="auto-style1" style="font-family: 'Comic Sans MS'">Ένα πρώτο δοκιμαστικό site</h1>
            <p class="auto-style1" style="font-family: 'Comic Sans MS'">&nbsp;</p>
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label1" runat="server" Text="ΚΑΛΗΜΕΡΑ"></asp:Label>&nbsp;</td>
                <td class="auto-style10">
                    <img alt="ari1" class="auto-style8" src="photos/008.JPG" /></td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>&nbsp;</td>
                <td class="auto-style13">
                    <img alt="ari2" class="auto-style8" src="photos/3.jpg" /></td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />&nbsp;</td>
                <td class="auto-style7">
                    <img alt="ari3" class="auto-style8" src="photos/aristea8.jpg" /></td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="Id" AllowPaging="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            </Columns>
        </asp:GridView>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Ypallilos]"></asp:SqlDataSource>


    </form>
</body>
</html>
