<%@ Page Title="" Language="C#" Debug="true" MasterPageFile="~/ADMINMASTER.master" AutoEventWireup="true" CodeFile="ADD QUESTION.aspx.cs" Inherits="ADD_QUESTION" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 1200px;
            background-color: #FFFFCC;
        }
    .style3
    {}
        .style4
        {
            width: 300PX;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellspacing="1" class="style2">
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td  style="width:300PX">
                &nbsp;</td>
            <td style="width:300PX" colspan="2">
                &nbsp;</td>
            <td style="width:300PX">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td  style="text-align: center; text-decoration: underline; font-style: italic; font-weight: 700;" 
                colspan="3">
                QUESTION BANK</td>
            <td style="width:300PX">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td  style="width:300PX; text-align: center;">
                &nbsp;</td>
            <td style="width:300PX" class="style3" colspan="2">
                &nbsp;</td>
            <td style="width:300PX">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td  style="width:300PX; text-align: center;">
                &nbsp;</td>
            <td style="width:300PX" class="style3" colspan="2">
                &nbsp;</td>
            <td style="width:300PX">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td  style="width:300PX; text-align: center;">
                SELECT COURCE</td>
            <td style="width:300PX; text-align: center;" class="style3" colspan="2">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="C_ID" DataValueField="C_ID" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [C_ID] FROM [COURCES]"></asp:SqlDataSource>
            </td>
            <td style="width:300PX">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td  style="width:300PX; text-align: center;">
                SELECT SEMESTER</td>
            <td style="width:300PX; margin-left: 80px; text-align: center;" class="style3" 
                colspan="2">
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td style="width:300PX">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td  style="width:300PX; text-align: center;">
                SELECT SUBJECT</td>
            <td style="width:300PX; margin-left: 80px; text-align: center;" class="style3" 
                colspan="2">
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList3_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td style="width:300PX">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td  style="width:300PX; text-align: center;">
                SELECT UNIT</td>
            <td style="width:300PX; margin-left: 80px; text-align: center;" class="style3" 
                colspan="2">
                <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td style="width:300PX">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td  style="width:300PX; text-align: center;">
                QUESTION -ID</td>
            <td style="width:300PX; margin-left: 80px; text-align: center;" class="style3" 
                colspan="2">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td style="width:300PX">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td  style="width:300PX; text-align: center;">
                ENTER QUESTION</td>
            <td style="width:300PX; margin-left: 80px; text-align: center;" class="style3" 
                colspan="2">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td style="width:300PX">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td  style="width:300PX; text-align: center;">
                ENTER CORRECT ANSWER</td>
            <td style="width:300PX; margin-left: 80px; text-align: center;" class="style3" 
                colspan="2">
                <asp:TextBox ID="TXTANS" runat="server"></asp:TextBox>
            </td>
            <td style="width:300PX">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                </td>
            <td  style="text-align: center;" class="style4">
                OPTION</td>
            <td style="margin-left: 80px; text-align: center;" class="style4">
                <asp:TextBox ID="TextBox2" runat="server" 
                     onload="Page_Load"></asp:TextBox>
            &nbsp;
            </td>
            <td style="margin-left: 80px; text-align: center;" class="style4">
                &nbsp;</td>
            <td class="style4">
                </td>
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td  style="width:300PX; text-align: center;">
                OPTION</td>
            <td style="width:300PX; margin-left: 80px; text-align: center;" class="style3">
                <asp:TextBox ID="TextBox3" runat="server" 
                     onload="Page_Load" 
                    ></asp:TextBox>
            &nbsp;
            </td>
            <td style="margin-left: 80px; text-align: center;" class="style4">
                &nbsp;</td>
            <td style="width:300PX">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td  style="width:300PX; text-align: center;">
                OPTION</td>
            <td style="width:300PX; margin-left: 80px; text-align: center;" class="style3">
                <asp:TextBox ID="TextBox4" runat="server" 
                    onload="Page_Load" 
                    ></asp:TextBox>
            &nbsp;
            </td>
            <td style="margin-left: 80px; text-align: center;" class="style4">
                &nbsp;</td>
            <td style="width:300PX">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td  style="width:300PX; text-align: center;">
                OPTION</td>
            <td style="width:300PX; margin-left: 80px; text-align: center;" class="style3">
                <asp:TextBox ID="TextBox5" runat="server" 
                     onload="Page_Load" 
                    ></asp:TextBox>
            &nbsp;
            </td>
            <td style="margin-left: 80px; text-align: center;" class="style4">
                &nbsp;</td>
            <td style="width:300PX">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td  style="width:300PX; text-align: center;">
                &nbsp;</td>
            <td style="width:300PX; margin-left: 80px;" class="style3" colspan="2">
                &nbsp;</td>
            <td style="width:300PX">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td  style="width:300PX; text-align: center;">
                &nbsp;</td>
            <td style="width:300PX; margin-left: 80px;" class="style3" colspan="2">
                &nbsp;</td>
            <td style="width:300PX">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td  style="width:300PX">
                <asp:Button ID="Button1" runat="server" Text="ADD" onclick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="UPDATE" />
            </td>
            <td style="width:300PX; text-align: center; margin-left: 80px;" class="style3" 
                colspan="2">
                <asp:Button ID="Button3" runat="server" style="text-align: center" 
                    Text="RESET" />
            </td>
            <td style="width:300PX">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

