<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin login.aspx.cs" Inherits="admin_login_" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 1200px;
            background-color: #0066FF;
        }
        .style2
        {
            width: 1200px;
            background-color: #FFFFCC;
        }
        .style3
        {
            text-align: center;
        }
        .style4
        {
            width: 300px;
        }
        .style5
        {
            text-align: center;
            width: 300px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" cellspacing="1" class="style1">
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <table align="center" cellspacing="1" class="style2">
                        <tr>
                            <td style ="width:300px">
                                &nbsp;</td>
                            <td style ="width:300px">
                                &nbsp;</td>
                            <td style ="width:300px">
                                &nbsp;</td>
                            <td style ="width:300px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style ="width:300px">
                                &nbsp;</td>
                            <td style ="text-align: center; text-decoration: underline; font-style: italic; font-weight: 700;" 
                                colspan="2">
                                &nbsp;LOGIN </td>
                            <td style ="width:300px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style ="width:300px">
                                &nbsp;</td>
                            <td style ="width:300px; text-align: center;">
                                &nbsp;</td>
                            <td style ="width:300px" class="style3">
                                &nbsp;</td>
                            <td style ="width:300px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style ="width:300px">
                                &nbsp;</td>
                            <td style ="width:300px; text-align: center;">
                                SELECT ENTITY</td>
                            <td style ="width:300px" class="style3">
                                <asp:DropDownList ID="DropDownList1" runat="server" 
                                    DataSourceID="SqlDataSource1" DataTextField="entity_name" 
                                    DataValueField="entity_name">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT [entity_name] FROM [entity]"></asp:SqlDataSource>
                            </td>
                            <td style ="width:300px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style ="width:300px">
                                &nbsp;</td>
                            <td style ="width:300px; text-align: center;">
                                &nbsp;</td>
                            <td style ="width:300px" class="style3">
                                &nbsp;</td>
                            <td style ="width:300px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style ="width:300px">
                                &nbsp;</td>
                            <td style ="width:300px; text-align: center;">
                                ENTER EMAIL -ID </td>
                            <td style ="width:300px" class="style3">
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                            <td style ="width:300px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style4">
                                </td>
                            <td style ="text-align: center;" class="style4">
                                </td>
                            <td class="style5">
                                </td>
                            <td class="style4">
                                </td>
                        </tr>
                        <tr>
                            <td style ="width:300px">
                                &nbsp;</td>
                            <td style ="width:300px; text-align: center;">
                                ENTER PASSWORD</td>
                            <td style ="width:300px" class="style3">
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                            <td style ="width:300px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style ="width:300px">
                                &nbsp;</td>
                            <td style ="width:300px; text-align: center;">
                                &nbsp;</td>
                            <td style ="width:300px" class="style3">
                                &nbsp;</td>
                            <td style ="width:300px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style ="width:300px">
                                &nbsp;</td>
                            <td style ="width:300px; text-align: center;">
                                &nbsp;</td>
                            <td style ="width:300px" class="style3">
                                &nbsp;</td>
                            <td style ="width:300px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style ="width:300px">
                                &nbsp;</td>
                            <td style ="width:300px; text-align: center;">
                                <asp:Button ID="BTNLOGIN" runat="server" onclick="BTNLOGIN_Click" 
                                    Text="LOG IN" />
                            </td>
                            <td style ="width:300px" class="style3">
                                <asp:Button ID="BTNRESET" runat="server" Text="RESET" />
                            </td>
                            <td style ="width:300px">
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
