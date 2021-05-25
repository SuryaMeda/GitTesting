<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RegistationProject.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        fieldset {
            background-color: #EFF3FB;
            color: black;
        }

        #login {
            margin: 50px auto;
            width: 300px;
            height: 131px;
        }

        .auto-style22 {
            width: 294px;
            height: 129px;
        }

        .auto-style23 {
            color: #FFFFFF;
            font-size: large;
        }

        .auto-style25 {
            width: 101px;
        }

        .auto-style26 {
            width: 221px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <body>
        <form>
            <script type="text/javascript">
                function login()
                {
                    if(document.getElementById("<%=TextBox1.ClientID%>").value=="")
                    {
                        alert("Enter UserId.");
                        document.getElementById("<%=TextBox1.ClientID%>").focus;
                        return false;
                    }
                    if (document.getElementById("<%=TextBox2.ClientID%>").value=="")
                    {
                        alert("Enter Password..");
                        document.getElementById("<%=TextBox2.ClientID%>").focus;
                        return false;
                    }
                
                    return true;
                }
            </script>
        <div id="login">
            <fieldset bg-color="#B5E9E5">
                <table class="auto-style22">
                    <tr bgcolor="#507CD1">
                        <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style23"><strong> User Login</strong></span></td>
                    </tr>
                    <tr>
                        <td class="auto-style26">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; UserId&nbsp;:</td>
                        <td class="auto-style25">
                            <asp:TextBox ID="TextBox1" runat="server" Style="margin-left: 0px" Width="118px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style26">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password :</td>
                        <td class="auto-style25">
                            <asp:TextBox ID="TextBox2" runat="server" Width="118px" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style26">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton2" runat="server" Height="31px" ImageUrl="~/image/images (1).jpg" Style="margin-left: 9px" Width="74px" OnClick="ImageButton2_Click1" />
                        </td>
                        <td class="auto-style25">&nbsp;&nbsp;&nbsp;&nbsp;   
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="28px" ImageUrl="~/image/download2.jpg" Width="76px" OnClick="ImageButton1_Click"  OnClientClick="return login()"/>
                        </td>
                    </tr>
                </table>
            </fieldset>

        </div>
        </form>
    </body>

</asp:Content>
