<%@ Page Title="" Language="C#" MasterPageFile="~/admin student.master" AutoEventWireup="true" CodeFile="FinalTest.aspx.cs" Inherits="FinalTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .style2
        {
            width: 1200px;
            background-color: #FFFFCC;
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
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="width:300px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300px">
                &nbsp;</td>
            <td style="text-align: center; text-decoration: underline; font-style: italic; font-weight: 700;" 
                colspan="2">
                TEST </td>
            <td style="width:300px">
                &nbsp;</td>
        </tr>
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
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="width:300px">
                &nbsp;</td>
        </tr>
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
            <td style="width:300px">
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="g" />
            </td>
            <td style="width:300px; margin-left: 160px;">
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="g" />
            </td>
            <td style="width:300px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300px">
                &nbsp;</td>
            <td style="width:300px">
                &nbsp;</td>
            <td style="width:300px; margin-left: 160px;">
                &nbsp;</td>
            <td style="width:300px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300px">
                &nbsp;</td>
            <td style="width:300px">
                <asp:RadioButton ID="RadioButton3" runat="server" GroupName="g" />
            </td>
            <td style="width:300px; margin-left: 160px;">
                <asp:RadioButton ID="RadioButton4" runat="server" GroupName="g" />
            </td>
            <td style="width:300px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300px">
                &nbsp;</td>
            <td style="width:300px">
                &nbsp;</td>
            <td style="width:300px; margin-left: 160px;">
                &nbsp;</td>
            <td style="width:300px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300px">
                &nbsp;</td>
            <td style="width:300px">
                &nbsp;</td>
            <td style="width:300px; margin-left: 160px;">
                &nbsp;</td>
            <td style="width:300px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300px">
                &nbsp;</td>
            <td style="text-align: center;" colspan="2">
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Button" />
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="NEXT" />
            </td>
            <td style="width:300px">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

