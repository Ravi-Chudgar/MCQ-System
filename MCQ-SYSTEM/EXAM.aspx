<%@ Page Title="" Language="C#" MasterPageFile="~/admin student.master" AutoEventWireup="true" CodeFile="EXAM.aspx.cs" Inherits="EXAM" %>

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
            <td style="width:300PX">
                &nbsp;</td>
            <td style="width:300PX"> 
                &nbsp;</td>
            <td style="width:300PX">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="width:300PX">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td style="width:300PX"> 
                START TEST</td>
            <td style="width:300PX">
                &nbsp;</td>
            <td style="width:300PX">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td style="width:300PX"> 
                <asp:Button ID="SHOWQUES" runat="server" onclick="SHOWQUES_Click" 
                    Text="START TEST" />
            </td>
            <td style="width:300PX">
                &nbsp;</td>
            <td style="width:300PX">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

