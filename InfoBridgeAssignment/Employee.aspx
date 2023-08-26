<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="InfoBridgeAssignment.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>EMPLOYEE FROM</title>
    <script src="http://code.jquery.com/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script type="text/javascript">
          function ImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=Image1.ClientID%>').prop('src', e.target.result)
                        .width(200)
                        .height(200);
                };
                reader.readAsDataURL(input.files[0]);
                }
            }

    </script>

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
        
        .btnAdd{
            background-color:#4CAF50;
            border:none;
            color:white;
            
            padding:15px 32px;
            text-align:center;
            text-decoration:none;
            display:inline-block;
            font-size:16px;
            margin-left:10px
           
        }
        .btnView{
           background-color:#4CAF50;
            border:none;
            color:white;
            
            padding:15px 32px;
            text-align:center;
            text-decoration:none;
            display:inline-block;
            font-size:16px;
            margin-left:25px;
        }
        .btnEdit{
            background-color:#4CAF50;
            border:none;
            color:white;
            
            padding:15px 32px;
            text-align:center;
            text-decoration:none;
            display:inline-block;
            font-size:16px;
            margin-left:25px;
        }
        .btnDelete{
            background-color:#4CAF50;
            border:none;
            color:white;
            
            padding:15px 32px;
            text-align:center;
            text-decoration:none;
            display:inline-block;
            font-size:16px;
           margin-left:25px;
        }
       
        .auto-style1 {
            width: 50%;
        }
        .auto-style2 {
            width: 74%;
        }
        .auto-style3 {
            width: 104%;
            height: 793px;
        }
        .auto-style4 {
            width: 55%;
            height: 433px;
        }
        .auto-style6 {
            width: 50%;
            height: 25px;
        }
        .auto-style8 {
            width: 74%;
            height: 26px;
        }
       
        .auto-style12 {
            width: 74%;
            height: 30px;
        }
        .auto-style14 {
            width: 74%;
            height: 36px;
        }
        .auto-style15 {
            height: 100px;
        }
        .auto-style16 {
            width: 74%;
            height: 100px;
        }
       
    </style>
</head>
    <body>
        <form id="form1" runat="server">
            <table style="background-color:#D3D3D3;" class="auto-style3">
                <tr>
                    <td width="20%">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Image ID="Image1" runat="server" />
                    </td>
                    <td ;valign="top" class="auto-style1">
                        <table style="border:1px solid #3498DB;" class="auto-style4">
                            <tr>
                                <td colspan="2" style="background-color:#3498DB;text-align:center;color:white;
                                   font-size:24px;font-weight:bold;height:50px;">Employee From</td>
                            </tr>
                            <tr>
                                <td colspan="2" style="height:10px"></td>
                            </tr>
                            <tr>
                                <td width="30%" class="tdLable">
                                    Id :<span style="color:red;">*</span>
                                </td>
                                <td class="auto-style2" style="border-right-style: groove; border-right-width: medium; border-right-color: #FFFFFF; border-top-style: groove; border-top-width: medium; border-top-color: #FFFFFF;">
                                    <asp:TextBox ID="txtId" runat="server" Width="253px" ></asp:TextBox>
                                </td>
                            </tr>
                             <tr>
                                <td width="30%" class="tdLable">
                                    Name :<span style="color:red;">*</span>
                                </td>
                                <td class="auto-style8" style="border-right-style: groove; border-right-width: medium; border-right-color: #FFFFFF">
                                    <asp:TextBox ID="txtName" runat="server" Width="252px" ></asp:TextBox>
                                </td>
                            </tr>
                            
                            <tr>
                                <td width="30%" class="tdLable">
                                    Sex :<span style="color:red;">*</span>
                                    
                                </td>
                                <td class="auto-style8" style="border-right-style: groove; border-right-width: medium; border-right-color: #FFFFFF">
                                    <asp:DropDownList ID="drpSex" runat="server">
                                        <asp:ListItem Value="-1" Text="--Select Gender--" ></asp:ListItem>
                                        <asp:ListItem Value="1" Text="Male" ></asp:ListItem>
                                        <asp:ListItem Value="2" Text="Female" ></asp:ListItem>
                                        <asp:ListItem Value="3" Text="Other" ></asp:ListItem>

                                    </asp:DropDownList>
                                    </td>
                                </tr>
                            <tr>
                                <td width="30%" class="tdLable">
                                    Phone :<span style="color:red;">*</span>
                                    
                                </td>
                                <td class="auto-style12" style="border-right-style: groove; border-right-width: medium; border-right-color: #FFFFFF">
                                    <asp:TextBox ID="txtPhone" runat="server" Width="251px" ></asp:TextBox>
                                </td>
                                </tr>
                            <tr>
                                <td width="30%" class="tdLable">
                                    Date Of Birth :<span style="color:red;">*</span>
                                    
                                </td>
                                <td class="auto-style6" style="border-right-style: groove; border-right-width: medium; border-right-color: #FFFFFF">
                                    <asp:TextBox ID="txtDateOfBirth" runat="server" Type="date" Width="147px" Height="17px"></asp:TextBox>
                                    <%--<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/calander.jpg" ImageAlign="AbsBottom" Height="22px" Width="25px" onclick="ImageButton1_Click" />--%>
                                    <%--<asp:Calendar ID="Calendar1" runat="server" Height="200px" Width="220px" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" OnSelectionChanged="Calendar1_SelectionChanged" OnDayRender="Calendar1_DayRender">
                                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                        <OtherMonthDayStyle ForeColor="#999999" />
                                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                        <WeekendDayStyle BackColor="#CCCCFF" />
                               </asp:Calendar>--%>
                                        </td>
                                </tr>
                             <tr>
                                <td width="30%" class="tdLable">
                                    Photo :<span style="color:red;">*</span>
                                    
                                </td>
                                <td class="auto-style14" style="border-right-style: groove; border-right-width: medium; border-right-color: #FFFFFF; border-bottom-style: groove; border-bottom-width: medium; border-bottom-color: #FFFFFF;">
                                    <asp:FileUpload ID="FileUpload1" runat="server" onchange="ImagePreview(this);"/>
                                &nbsp;&nbsp;
                                    </td>
                                </tr>
                            <tr>
                                <td colspan="2" style="height:10px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                   <asp:Button ID="btnAdd" runat="server"  OnClick="btnAdd_Click" Text="Add" CssClass="btnAdd" />
                                    &nbsp;&nbsp;
                                    <asp:Button ID="btnView" runat="server"  Text="View" CssClass="btnView" Width="119px" OnClick="btnView_Click" />
                                &nbsp;&nbsp;
                                   <asp:Button ID="btnEdit" runat="server"  Text="Edit" CssClass="btnEdit" OnClick="btnEdit_Click"  />
                                </td>
                            </tr>
                            <tr>
                                <td width="30%" class="auto-style15" style="border: thin outset #3498DB">

                                   <asp:Button ID="btnDelete" runat="server"  Text="Delete"  CssClass="btnDelete" BackColor="#CC0000" OnClick="btnDelete_Click" />

                                </td>
                                <td class="auto-style16" style="border: thin outset #3498DB">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" Width="250px">
                                        <Columns>
                                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                            <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" SortExpression="DateOfBirth" />
                                            <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
                                            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                                            <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
                                        </Columns>
                                    </asp:GridView>    
                                    <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:defaultconnection %>" SelectCommand="SELECT * FROM [Employee]"></asp:SqlDataSource>--%>
                                </td>
                            </tr>
                            
                        </table>
                    </td>
                </tr>
            </table>
        </form>
    </body>

</html>