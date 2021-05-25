<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserReport.aspx.cs" Inherits="RegistationProject.UserReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 243px;
            font-weight: 700;
        }
        .auto-style3 {
            width: 243px;
            font-weight: 700;
            height: 37px;
        }
        .auto-style4 {
            height: 37px;
        }
        .auto-style5 {
            width: 243px;
            font-weight: 700;
            height: 33px;
        }
        .auto-style6 {
            height: 33px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FullName :</strong></td>
                <td class="auto-style6">
                    <asp:Label ID="Label1" runat="server" Text="" ></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Phone :</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="20px" Width="177px">
                        <asp:ListItem>Wrong Number</asp:ListItem>
                        <asp:ListItem>Using someone else</asp:ListItem>
                        <asp:ListItem>Donors location Change</asp:ListItem>
                        <asp:ListItem>Donated Recently</asp:ListItem>
                        <asp:ListItem>Can&#39;t donate anymore</asp:ListItem>
                        <asp:ListItem>Denied to Donate</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Report Information :</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Height="46px" Width="182px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="22px" OnClick="Button1_Click" Text="Report" Width="67px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Height="22px" OnClick="Button2_Click" Text="Close" Width="67px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
        </table>
       
    </div>
    </form>
</body>
</html>
