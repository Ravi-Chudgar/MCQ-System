<%@ Page Title="" Language="C#" MasterPageFile="~/ADMINMASTER.master" AutoEventWireup="true" CodeFile="ADD COURCES.aspx.cs" Inherits="ADD_COURCES" %>

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
    <table align="center" class="style2">
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td style="width:300PX">
                &nbsp;</td>
            <td style="width:300PX">
                &nbsp;</td>
            <td style="width:300PX">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td style="text-align: center; text-decoration: underline; font-style: italic; font-weight: 700;" 
                colspan="2">
                ENTER COURCE</td>
            <td style="width:300PX">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td style="width:300PX">
                &nbsp;</td>
            <td style="width:300PX" class="style3">
                &nbsp;</td>
            <td style="width:300PX">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td style="width:300PX; text-align: center;">
                ENTER COURCE NAME</td>
            <td style="width:300PX" class="style3">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td style="width:300PX">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td style="width:300PX; text-align: center;">
                ENTER COURCE -ID</td>
            <td style="width:300PX" class="style3">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td style="width:300PX">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td style="width:300PX; text-align: center;">
                &nbsp;</td>
            <td style="width:300PX" class="style3">
                &nbsp;</td>
            <td style="width:300PX">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td style="width:300PX; text-align: center;">
                &nbsp;</td>
            <td style="width:300PX" class="style3">
                &nbsp;</td>
            <td style="width:300PX">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td style="width:300PX; text-align: center;">
                <asp:Button ID="Button1" runat="server" Text="ADD" onclick="Button1_Click" />
            </td>
            <td style="width:300PX" class="style3">
                <asp:Button ID="Button2" runat="server" Text="ADD SEMESTER" 
                    onclick="Button2_Click" />
            </td>
            <td style="width:300PX">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

