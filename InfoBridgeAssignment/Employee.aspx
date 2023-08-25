<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="InfoBridgeAssignment.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            height: 38px;
        }
        .auto-style5 {
            height: 26px;
        }
        .auto-style6 {
            text-align: left;
        }
        .auto-style7 {
            height: 26px;
            text-align: left;
        }
        .auto-style8 {
            height: 38px;
            text-align: left;
            margin-left: 4760px;
        }
        .auto-style9 {
            text-align: left;
            height: 52px;
        }
        .auto-style10 {
            width: 181px;
            text-align: center;
        }
        .auto-style11 {
            height: 38px;
            width: 181px;
            text-align: center;
        }
        .auto-style12 {
            height: 26px;
            width: 181px;
            text-align: center;
        }
        .auto-style13 {
            width: 181px;
            height: 45px;
            text-align: center;
        }
        .auto-style14 {
            text-align: left;
            height: 45px;
        }
        .auto-style15 {
            height: 45px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial Rounded MT Bold" Font-Overline="False" Font-Size="X-Large" Font-Strikeout="False" ForeColor="#000066" Height="42px" Text="Employee From" Width="259px"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="X-Large" ForeColor="Black" Text="ID:"></asp:Label>
                    </td>
                    <td class="auto-style8">&nbsp;<asp:TextBox ID="txtId" runat="server" Font-Names="Arial" Font-Size="X-Large" ForeColor="Black" TabIndex="1"></asp:TextBox>
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="X-Large" ForeColor="Black" Text="Name:"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtName" runat="server" Font-Names="Arial" Font-Size="X-Large" ForeColor="Black" TabIndex="2"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="X-Large" ForeColor="Black" Text="Date Of Birth:"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtDateOfBirth" runat="server" Font-Names="Arial" Font-Size="X-Large" ForeColor="Black" TabIndex="3"></asp:TextBox>
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/calander.jpg" ImageAlign="AbsBottom" Height="36px" Width="42px" onclick="ImageButton1_Click" />
                        <asp:Calendar ID="Calendar1" runat="server" Height="200px" Width="220px" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" OnSelectionChanged="Calendar1_SelectionChanged" OnDayRender="Calendar1_DayRender">
                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                            <WeekendDayStyle BackColor="#CCCCFF" />
                        </asp:Calendar>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="Label5" runat="server" Font-Names="Arial" Font-Size="X-Large" ForeColor="Black" Text="Sex:"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtSex" runat="server" Font-Names="Arial" Font-Size="X-Large" ForeColor="Black" TabIndex="4"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label6" runat="server" Font-Names="Arial" Font-Size="X-Large" ForeColor="Black" Text="Phone:"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <asp:TextBox ID="txtPhone" runat="server" Font-Names="Arial" Font-Size="X-Large" ForeColor="Black" TabIndex="5"></asp:TextBox>
                    </td>
                    <td class="auto-style15"></td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label7" runat="server" Font-Names="Arial" Font-Size="X-Large" ForeColor="Black" Text="Photo:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:FileUpload ID="FileUpload1" runat="server" TabIndex="6" />
                        <br />
                    </td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Button ID="btnView" runat="server" Height="47px" Text="View" Width="103px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnAdd" runat="server" Height="47px" OnClick="btnAdd_Click" Text="Add" Width="103px" />
&nbsp;<asp:Button ID="btnEdit" runat="server" Height="47px" Text="Edit" Width="103px" />
                        <asp:Button ID="btnDelete" runat="server" Height="47px" Text="Delete" Width="103px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
