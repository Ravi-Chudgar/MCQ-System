<%@ Page Title="" Language="C#" MasterPageFile="~/ADMINMASTER.master" AutoEventWireup="true" CodeFile="TEST ALLOCATION.aspx.cs" Inherits="TEST_ALLOCATION" %>

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
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td style="text-align: center; text-decoration: underline; font-style: italic; font-weight: 700;" 
                colspan="2">
                TEST ALLOCATION</td>
            <td style="width:300PX">
                &nbsp;</td>
        </tr>
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
            <td style="width:300PX" class="style3">
                SELECT TEST</td>
            <td style="width:300PX" class="style3">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource2" DataTextField="TEST_NAME" 
                    DataValueField="TEST_NAME">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [TEST_NAME] FROM [TEST]"></asp:SqlDataSource>
            </td>
            <td style="width:300PX">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td style="width:300PX" class="style3">
                &nbsp;</td>
            <td style="width:300PX" class="style3">
                &nbsp;</td>
            <td style="width:300PX">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td style="width:300PX" class="style3">
                SELECT EMAIL OF STUDENT</td>
            <td style="width:300PX" class="style3">
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="EMAIL" DataValueField="EMAIL">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [EMAIL] FROM [LOGIN] WHERE ([entity_id] = @entity_id)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="2" Name="entity_id" Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td style="width:300PX">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td style="width:300PX" class="style3">
                &nbsp;</td>
            <td style="width:300PX" class="style3">
                &nbsp;</td>
            <td style="width:300PX">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:300PX">
                &nbsp;</td>
            <td style="width:300PX" class="style3">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
            </td>
            <td style="width:300PX" class="style3">
                <asp:Button ID="Button2" runat="server" Text="Button" />
            </td>
            <td style="width:300PX">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

