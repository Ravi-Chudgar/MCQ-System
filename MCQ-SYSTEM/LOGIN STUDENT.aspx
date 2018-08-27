<%@ Page Title="" Language="C#" MasterPageFile="~/admin student.master" AutoEventWireup="true" CodeFile="LOGIN STUDENT.aspx.cs" Inherits="LOGIN_STUDENT" %>

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
            <td style ="width:300PX">
                &nbsp;</td>
            <td style ="width:300PX">
                &nbsp;</td>
            <td style ="width:300PX">
                &nbsp;</td>
            <td style ="width:300PX">
                &nbsp;</td>
        </tr>
        <tr>
            <td style ="width:300PX">
                &nbsp;</td>
            <td style ="text-align: center; text-decoration: underline; font-style: italic; font-weight: 700;" 
                colspan="2">
                LOGIN </td>
            <td style ="width:300PX">
                &nbsp;</td>
        </tr>
        <tr>
            <td style ="width:300PX">
                &nbsp;</td>
            <td style ="width:300PX">
                &nbsp;</td>
            <td style ="width:300PX">
                &nbsp;</td>
            <td style ="width:300PX">
                &nbsp;</td>
        </tr>
        <tr>
            <td style ="width:300PX">
                &nbsp;</td>
            <td style ="width:300PX; text-align: center;">
                ENTER EMAIL </td>
            <td style ="width:300PX" class="style3">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td style ="width:300PX">
                &nbsp;</td>
        </tr>
        <tr>
            <td style ="width:300PX">
                &nbsp;</td>
            <td style ="width:300PX; text-align: center;">
                &nbsp;</td>
            <td style ="width:300PX" class="style3">
                &nbsp;</td>
            <td style ="width:300PX">
                &nbsp;</td>
        </tr>
        <tr>
            <td style ="width:300PX">
                &nbsp;</td>
            <td style ="width:300PX; text-align: center;">
                ENTER PASSWORD</td>
            <td style ="width:300PX" class="style3">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td style ="width:300PX">
                &nbsp;</td>
        </tr>
        <tr>
            <td style ="width:300PX">
                &nbsp;</td>
            <td style ="width:300PX; text-align: center;">
                &nbsp;</td>
            <td style ="width:300PX" class="style3">
                &nbsp;</td>
            <td style ="width:300PX">
                &nbsp;</td>
        </tr>
        <tr>
            <td style ="width:300PX">
                &nbsp;</td>
            <td style ="width:300PX; text-align: center;">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="LOGIN" />
            </td>
            <td style ="width:300PX" class="style3">
                <asp:Button ID="Button2" runat="server" Text="RESET" />
            </td>
            <td style ="width:300PX">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

