<%@ Page Title="" Language="C#" MasterPageFile="~/ADMINMASTER.master" AutoEventWireup="true" CodeFile="USER REGISTRATION.aspx.cs" Inherits="USER_REGISTRATION" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 1200px;
            background-color: #FFFFCC;
        }
        .style3
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellspacing="1" class="style2">
        <tr>
            <td style="width:300px">
                &nbsp;</td>
            <td style="width:300px">
                &nbsp;</td>
            <td style="width:300px">
                &nbsp;</td>
            <td style="width:300px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300px">
                &nbsp;</td>
            <td style="text-align: center; text-decoration: underline; font-style: italic; font-weight: 700;" 
                colspan="2">
                REGISTRATION STUDENT&nbsp;</td>
            <td style="width:300px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300px">
                &nbsp;</td>
            <td style="width:300px; text-align: center;">
                &nbsp;</td>
            <td style="width:300px" class="style3">
                &nbsp;</td>
            <td style="width:300px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300px">
                &nbsp;</td>
            <td style="width:300px; text-align: center;">
                SELECT ENTITY</td>
            <td style="width:300px" class="style3">
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
            <td style="width:300px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300px">
                &nbsp;</td>
            <td style="width:300px; text-align: center;">
                &nbsp;</td>
            <td style="width:300px" class="style3">
                &nbsp;</td>
            <td style="width:300px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300px">
                &nbsp;</td>
            <td style="width:300px; text-align: center;">
                ENTER E-MAIL</td>
            <td style="width:300px" class="style3">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td style="width:300px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300px">
                &nbsp;</td>
            <td style="width:300px; text-align: center;">
                &nbsp;</td>
            <td style="width:300px" class="style3">
                &nbsp;</td>
            <td style="width:300px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300px">
                &nbsp;</td>
            <td style="width:300px; text-align: center;">
                ENTER PASSWORD</td>
            <td style="width:300px" class="style3">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td style="width:300px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300px">
                &nbsp;</td>
            <td style="width:300px; text-align: center;">
                &nbsp;</td>
            <td style="width:300px" class="style3">
                &nbsp;</td>
            <td style="width:300px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300px">
                &nbsp;</td>
            <td style="width:300px; text-align: center;">
                ENTER RE-PASSWORD</td>
            <td style="width:300px" class="style3">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td style="width:300px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300px">
                &nbsp;</td>
            <td style="width:300px; text-align: center;">
                &nbsp;</td>
            <td style="width:300px" class="style3">
                &nbsp;</td>
            <td style="width:300px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300px">
                &nbsp;</td>
            <td style="width:300px; text-align: center;">
                ENTER CONTACT NUMBER</td>
            <td style="width:300px" class="style3">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td style="width:300px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300px">
                &nbsp;</td>
            <td style="width:300px; text-align: center;">
                &nbsp;</td>
            <td style="width:300px" class="style3">
                &nbsp;</td>
            <td style="width:300px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300px">
                &nbsp;</td>
            <td style="width:300px; text-align: center; margin-left: 40px;">
                <asp:Button ID="Button1" runat="server" Text="REGISTRATION" 
                    onclick="Button1_Click" />
            </td>
            <td style="width:300px" class="style3">
                <asp:Button ID="Button2" runat="server" Text="RESET" />
            </td>
            <td style="width:300px">
                &nbsp;</td>
        </tr>
    </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
</asp:Content>

