<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="InfoBridgeAssignment.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style5 {
            width: 109px;
            height: 52px;
        }
        .auto-style6 {
            height: 52px;
        }
        .auto-style7 {
            width: 109px;
            height: 46px;
        }
        .auto-style8 {
            height: 46px;
        }
        .auto-style9 {
            text-align: justify;
            height: 67px;
        }
        .auto-style10 {
            width: 109px;
            height: 67px;
        }
        .auto-style11 {
            height: 67px;
        }
        .auto-style12 {
            height: 52px;
            margin-left: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image1" runat="server" Height="51px" ImageUrl="https://cdn-icons-png.flaticon.com/512/74/74472.png" Width="104px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" BorderColor="#000066" Font-Bold="True" Font-Names="Arial Narrow" Font-Size="XX-Large" ForeColor="#000099" Height="47px" Text="LOGIN" Width="139px"></asp:Label>
                </td>
                <td class="auto-style11"></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" Font-Names="Arial Narrow" Font-Size="Large" ForeColor="#000066" Text="User name:"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtUserName" runat="server" Font-Names="Arial Narrow" Font-Size="Large" ForeColor="Black" TabIndex="1"></asp:TextBox>
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label2" runat="server" Font-Names="Arial Narrow" Font-Size="Large" ForeColor="#000066" Text="Password:"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtPassword" runat="server" Font-Names="Arial Narrow" Font-Size="Large" ForeColor="Black" TabIndex="2"></asp:TextBox>
                </td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6">
                    <asp:Button ID="btnLogin" runat="server" BackColor="#FFFFCC" Font-Bold="True" Font-Names="Arial Rounded MT Bold" Font-Size="Medium" ForeColor="Red" Height="34px" OnClick="btnLogin_Click" TabIndex="3" Text="Login" Width="143px" />
                </td>
                <td class="auto-style6">
                    <asp:Label ID="lblErorr" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
