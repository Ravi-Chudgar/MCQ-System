<%@ Page Title="" Language="C#" MasterPageFile="~/ADMINMASTER.master" AutoEventWireup="true" CodeFile="CREATE TEST.aspx.cs" Inherits="SEE_EXAM" %>

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
            <td style="width:300PX">
                &nbsp;</td>
            <td style="width:300PX">
                &nbsp;</td>
            <td style="width:300PX">
                &nbsp;</td>
            <td style="width:300PX">
                &nbsp;</td >
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td style="text-align: center; text-decoration: underline; font-style: italic; font-weight: 700;" 
                colspan="2">
                ENTER DETAIL OF TEST </td>
            <td style="width:300PX">
                &nbsp;</td >
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td style="width:300PX; text-align: center;">
                &nbsp;</td>
            <td style="width:300PX" class="style3">
                &nbsp;</td>
            <td style="width:300PX">
                &nbsp;</td >
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td style="width:300PX; text-align: center;">
                SELECT SEMESTER </td>
            <td style="width:300PX" class="style3">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="SEMESTER" 
                    DataValueField="SEMESTER" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [SEMESTER] FROM [SEM]"></asp:SqlDataSource>
            </td>
            <td style="width:300PX">
                &nbsp;</td >
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td style="width:300PX; text-align: center;">
                &nbsp;</td>
            <td style="width:300PX" class="style3">
                &nbsp;</td>
            <td style="width:300PX">
                &nbsp;</td >
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td style="width:300PX; text-align: center;">
                SELECT SUJECT</td>
            <td style="width:300PX" class="style3">
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
                    AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td style="width:300PX">
                &nbsp;</td >
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td style="width:300PX; text-align: center;">
                &nbsp;</td>
            <td style="width:300PX" class="style3">
                &nbsp;</td>
            <td style="width:300PX">
                &nbsp;</td >
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td style="width:300PX; text-align: center;">
                SELET UNIT</td>
            <td style="width:300PX" class="style3">
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                    >
                </asp:DropDownList>
            </td>
            <td style="width:300PX">
                &nbsp;</td >
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td style="width:300PX; text-align: center;">
                &nbsp;</td>
            <td style="width:300PX" class="style3">
                &nbsp;</td>
            <td style="width:300PX">
                &nbsp;</td >
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td style="width:300PX; text-align: center;">
                ENTER TEST NAME </td>
            <td style="width:300PX" class="style3">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td style="width:300PX">
                &nbsp;</td >
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td style="width:300PX; text-align: center;">
                &nbsp;</td>
            <td style="width:300PX" class="style3">
                &nbsp;</td>
            <td style="width:300PX">
                &nbsp;</td >
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td style="width:300PX; text-align: center;">
                SELECT DURATION</td>
            <td style="width:300PX" class="style3">
                <asp:DropDownList ID="DropDownList4" runat="server">
                    <asp:ListItem>10 minutes</asp:ListItem>
                    <asp:ListItem>20 minutes</asp:ListItem>
                    <asp:ListItem>30 minutes</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width:300PX">
                &nbsp;</td >
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td style="width:300PX; text-align: center;">
                &nbsp;</td>
            <td style="width:300PX" class="style3">
                &nbsp;</td>
            <td style="width:300PX">
                &nbsp;</td >
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td style="width:300PX; text-align: center;">
                &nbsp;</td>
            <td style="width:300PX" class="style3">
                &nbsp;</td>
            <td style="width:300PX">
                &nbsp;</td >
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td style="width:300PX; text-align: center;">
                <asp:Button ID="BTNTEST" runat="server" Text="CREATE TEST" 
                    onclick="BTNTEST_Click" />
            </td>
            <td style="width:300PX" class="style3">
                <asp:Button ID="BTNRESET" runat="server" Text="RESET" />
            </td>
            <td style="width:300PX">
                &nbsp;</td >
        </tr>
    </table>
</asp:Content>

