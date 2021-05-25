<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SearchPage.aspx.cs" Inherits="RegistationProject.SearchPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
        .auto-style26 {
            height: 23px;
        }
        .auto-style27 {
        }
        .auto-style30 {
            height: 23px;
            width: 384px;
        }
        .auto-style31 {
            width: 384px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
        <form name="f1" method="post">
            <script type="text/javascript">
                function Search()
                {
                    if(document.getElementById("<%=DropDownList5.ClientID%>").selectedIndex == 0)
                    {
                        alert("Please Select Blood Group");
                        document.getElementById("<%=DropDownList5.ClientID%>").focus;
                        return false;
                    }
                    if (document.getElementById("<%=DropDownList1.ClientID%>").selectedIndex == 0) {
                        alert("Please Select Country");
                        document.getElementById("<%=DropDownList1.ClientID%>").focus;
                        return false;
                    }
                    if (document.getElementById("<%=DropDownList2.ClientID%>").selectedIndex == 0) {
                        alert("Please Select State");
                        document.getElementById("<%=DropDownList2.ClientID%>").focus;
                        return false;
                    }
                    if (document.getElementById("<%=DropDownList3.ClientID%>").selectedIndex == 0) {
                        alert("Please Select District");
                        document.getElementById("<%=DropDownList3.ClientID%>").focus;
                        return false;
                    }
                    if (document.getElementById("<%=DropDownList4.ClientID%>").selectedIndex == 0) {
                        alert("Please Select City");
                        document.getElementById("<%=DropDownList4.ClientID%>").focus;
                        return false;
                    }
                }
            </script>
   
    <table class="auto-style5">
  
        <tr>
            <td class="auto-style30">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" Height="17px" Width="135px">
                    <asp:ListItem>---Select---</asp:ListItem>
                        <asp:ListItem>A+</asp:ListItem>
                        <asp:ListItem>A-</asp:ListItem>
                        <asp:ListItem>A1+</asp:ListItem>
                        <asp:ListItem>A1-</asp:ListItem>
                        <asp:ListItem>A1B+</asp:ListItem>
                        <asp:ListItem>A1B-</asp:ListItem>
                        <asp:ListItem>A2+</asp:ListItem>
                        <asp:ListItem>A2-</asp:ListItem>
                        <asp:ListItem>A2B+</asp:ListItem>
                        <asp:ListItem>A2B-</asp:ListItem>
                        <asp:ListItem>AB+</asp:ListItem>
                        <asp:ListItem>AB-</asp:ListItem>
                        <asp:ListItem>B+</asp:ListItem>
                        <asp:ListItem>B-</asp:ListItem>
                        <asp:ListItem>Bombay Blood Group</asp:ListItem>
                        <asp:ListItem>INRA</asp:ListItem>
                        <asp:ListItem>O+</asp:ListItem>
                        <asp:ListItem>O-</asp:ListItem>
                </asp:DropDownList>
                <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Height="17px" Width="135px">
                     <asp:ListItem Text="---Select---" Value="select"/>
                </asp:DropDownList>
                <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Height="17px" Width="135px">
                     <asp:ListItem Text="---Select---" Value="select"/>
                </asp:DropDownList>
                <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" Height="17px" Width="135px">
                     <asp:ListItem Text="---Select---" Value="select"/>
                </asp:DropDownList>
                <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" Height="17px" Width="135px">
                     <asp:ListItem Text="---Select---" Value="select"/>
                </asp:DropDownList>
                <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Height="20px" Text="Submit" Width="67px" OnClick="Button1_Click"/>
            </td>
           
            <td class="auto-style26">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="true" OnPageIndexChanging="GridView1_PageIndexChanging">
                    <Columns>
                        <asp:TemplateField HeaderText="Name">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Available/Unavailable">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("blood") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("blood") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Mobile no.">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("phone") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("phone") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                    </Columns>
                     
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
        </tr>
    </table>
            </form>
        </body>
</asp:Content>
