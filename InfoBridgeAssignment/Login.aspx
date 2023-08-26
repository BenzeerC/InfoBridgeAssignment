<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="InfoBridgeAssignment.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style type="text/css">
        .tdLable
        {
            text-align:left;
            font-family:Calibri;
            font-size:20px;
            font-weight:bold;
            margin-left:25px;
            border:groove;
            border-color:#3498DB;
        }
        
        .btnLogin{
            background-color:#4CAF50;
            border:none;
            color:white;
            
            padding:15px 32px;
            text-align:center;
            text-decoration:none;
            display:inline-block;
            font-size:16px;
           margin-right:30px;
           
        }
          .auto-style1 {
            text-align: center;
        }
          .auto-style2 {
            width: 20%;
        }
        .auto-style3 {
            width: 28%;
            height: 229px;
        }
        .auto-style4 {
            width: 22%;
        }
        .auto-style5 {
            width: 24%;
        }
          .auto-style9 {
            text-align: left;
            font-family: Calibri;
            font-size: 20px;
            font-weight: bold;
            margin-left: 25px;
            border: medium groove #3498DB;
            width: 215px;
        }
          .auto-style10 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #4CAF50;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: medium;
            margin-right: 30px;
            font-weight: bold;
        }
          </style>
</head>
    <body style="height: 500px">
<form id="form1" runat="server">
         <table style="background-color:#D3D3D3;" class="auto-style3" align="center">
                <tr class="auto-style1">
                    <td class="auto-style5" style="background-color: #FFFFFF" >
                       <%-- <asp:Image ID="Image1" runat="server" ImageUrl="https://in.images.search.yahoo.com/images/view;_ylt=AwrKC0KX9elk8M4x5h29HAx.
                           ;_ylu=c2VjA3NyBHNsawNpbWcEb2lk--%><%--AzA3YzJjMzY0ZWVhYWMzNzgwMzMxODcxMmUwOTFmMTgzBGdwb3MDMTQEaXQDYmluZw--?back=https%3A%2F%2Fin.images.search.yahoo.com%2Fsearch%2Fimages%3Fp%3Dlogin%2Bimage%2Bicon%26type%3DE211IN714G0%26fr%3Dmcafee%26fr2%3Dpiv-web%26tab%3Dorganic%26ri%3D14&amp;w=474&amp;h=474&amp;imgurl=www.clker.com%2Fcliparts%2Fy%2Fo%2FN%2FR%2FL%2Ff%2Flogin-blue-hi.png&amp;rurl=http%3A%2F%2Fwww.clker.com%2Fclipart-login-blue-1.html&amp;size=43.9KB&amp;p=login+image+icon&amp;oid=07c2c364eeaac37803318712e091f183&amp;fr2=piv-web&amp;fr=mcafee&amp;tt=Login+Blue+Clip+Art+at+Clker.com+-+vector+clip+art+online%2C+royalty+free+...&amp;b=0&amp;ni=21&amp;no=14&amp;ts=&amp;tab=organic&amp;sigr=d3bhZYQ1LK7h&amp;sigb=cpkFqK0YeRDz&amp;sigi=2I3lxJylSwga&amp;sigt=7zhVFh10cDGz&amp;.crumb=9XJARxzANOI&amp;fr=mcafee&amp;fr2=piv-web&amp;type=E211IN714G0" />
                    </td>--%>
                        <asp:Image ID="Image1" runat="server" Height="120px" ImageUrl="https://tse3.mm.bing.net/th?id=OIP.bDZo3bdme5t7LF1uhyZ7_gHaHa&amp;pid=Api&amp;P=0&amp;h=180" Width="128px" />
                        </td>
                    <td valign="top" class="auto-style1">
                        <table style="border:1px solid #3498DB;" class="auto-style4">
                            <tr>
                                <td colspan="2" style="background-color:#3498DB;text-align:center;color:white;
                                   font-size:24px;font-weight:bold;height:50px; " >Login</td>
                            </tr>
                             <tr>
                                <td colspan="2" style="height:10px"></td>
                            </tr>
                            <tr>
                                <td class="auto-style9">
                                    Username :<span style="color:red;">*</span>
                                </td>
                                <td class="auto-style2" style="border-right-style: groove; border-right-width: medium; border-right-color: #FFFFFF; border-top-style: groove; border-top-width: medium; border-top-color: #FFFFFF;">
                                    <asp:TextBox ID="txtUserName" runat="server" Width="253px" ></asp:TextBox>
                                </td>
                                </tr>
                             <tr>
                                <td class="auto-style9">
                                    Password :<span style="color:red;">*</span>
                                </td>
                                <td class="auto-style2" style="border-right-style: groove; border-right-width: medium; border-right-color: #FFFFFF; border-top-style: groove; border-top-width: medium; border-top-color: #FFFFFF;">
                                    <asp:TextBox ID="txtPassword" runat="server" Width="253px" TextMode="Password" ></asp:TextBox>
                                </td>
                                </tr>
                              <%--<td class="auto-style6" <td class="auto-style16" > 
                                  &nbsp;--%><asp:Label ID="lblErorr" runat="server" ForeColor="Red"></asp:Label>
                <%--</td>--%>    
                            <td class="auto-style9" style="background-color: #4CAF50">
                                   <%--<asp:Button ID="btnLogin" runat="server"  OnClick="btnLogin_Click" Text="Login" CssClass="btnLogin" Width="108px" />--%>
                          
                                   <strong>
                          
                                   <asp:Button ID="btnLogin" runat="server"  OnClick="btnLogin_Click" Text="Login" CssClass="auto-style10" Width="128px" Height="57px" />
                          
                                   </strong>
                          
                            </td>
                            <td class="auto-style7">
                                   <asp:Image ID="Image2" runat="server" Height="47px" ImageUrl="https://tse4.mm.bing.net/th?id=OIP.HCIUmwE47DnoMQ22KaaoVwAAAA&amp;pid=Api&amp;P=0&amp;h=180" Width="68px" />
                            </td>
                            
                            
                            </tr>
                      </table>
    
                    </td>
                </tr>
            </table>
        </form>
    </body>

</html>
             








        <%--.auto-style1 {
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
</html>--%>
