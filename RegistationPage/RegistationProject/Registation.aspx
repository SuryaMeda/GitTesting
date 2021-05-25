<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Registation.aspx.cs" Inherits="RegistationProject.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
           <head>
    <title></title>
        
    <style type="text/css">
               body {
                    background-color: #f4f4f4;
                    color: #5a5656;
                    font-family: 'Open Sans', Arial, Helvetica, sans-serif;
                    font-size: 16px;
                    line-height: 1.5em;
                  }
        form fieldset a:hover { text-decoration: underline; }
        form fieldset Button[ID="submit"] 
        {
                        background-color: #008dde;
                        border: none;
                        border-radius: 3px;
                        -moz-border-radius: 3px;
                        -webkit-border-radius: 3px;
                        color: #f4f4f4;
                        cursor: pointer;
                        font-family: 'Open Sans', Arial, Helvetica, sans-serif;
                        height: 50px;
                        text-transform: uppercase;
                        width: 300px;
                        -webkit-appearance:none;
     }
        fieldset {
                  background-color: #EFF3FB;
                  color: black;
                 }

        #login {
                    margin: 50px auto;
                    width: 300px;
               }
        .auto-style3 {
            height: 26px;
            width: 291px;
        }
        .auto-style4 {
            width: 478px;
            height: 567px;
        }
        .auto-style5 {
            width: 601px;
        }
        .auto-style8 {
        }
        .auto-style9 {
            height: 49px;
        }
        .auto-style10 {
            width: 601px;
            height: 49px;
        }
        .auto-style11 {
            height: 28px;
            width: 291px;
        }
        .auto-style12 {
            height: 28px;
            width: 601px;
        }
        .auto-style13 {
            height: 28px;
        }
        .auto-style14 {
            height: 24px;
        }
    .auto-style15 {
        height: 26px;
        width: 291px;
    }
    .auto-style16 {
        height: 26px;
        width: 601px;
    }
    .auto-style17 {
        height: 47px;
    }
    </style>


    
   <style type="text/css">
   .auto-style5
    {
           width: 126px
    }
  </style>

</head>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <body>
         <form name="f1" method="post" >

                <script type="text/javascript">

                    function registation() {

                        if (document.getElementById("<%=TextBox1.ClientID%>").value == "")
                        {
               alert("Name Feild can not be blank");
               document.getElementById("<%=TextBox1.ClientID%>").focus();
               return false;
           }
           var letter = /^[A-Za-z]+$/;
           var name = document.getElementById("<%=TextBox1.ClientID%>").value;
           var name1 = name.match(letter);
           if (name1 == null) {
               alert("Enter Only Alphabets");
               document.getElementById("<%=TextBox1.ClientID%>").focus();
               return false;
           }
           if (document.getElementById("<%=TextBox2.ClientID%>").value == "") {
               alert("Select Date Of Birth");
               document.getElementById("<%=TextBox2.ClientID%>").focus();
               return false;
           }
           if (document.getElementById("<%=DropDownList1.ClientID%>").selectedIndex == 0) {
               alert("Please Select Blood Group");
               document.getElementById("<%=DropDownList1.ClientID%>").focus;
               return false;
           }
           if (document.getElementById("<%=TextBox3.ClientID%>").value == "") {
               alert("Please Enter Phone Number");
               document.getElementById("<%=TextBox3.ClientID%>").focus;
               return false;
           }
           var numberExp = /^[0-9]+$/;
           var number1 = document.getElementById("<%=TextBox3.ClientID%>").value;
           var number2 = number1.match(numberExp);
           if (number2 == null) {
               alert("Enter only numeric values.");
               document.getElementById("<%=TextBox3.ClientID%>").focus;
               return false;
           }
           if (document.getElementById("<%=DropDownList2.ClientID%>").selectedIndex == 0) {
               alert("Please Select Country");
               document.getElementById("<%=DropDownList2.ClientID%>").focus;
               return false;
           }
           if (document.getElementById("<%=DropDownList3.ClientID%>").selectedIndex == 0) {
               alert("Please Select State");
               document.getElementById("<%=DropDownList3.ClientID%>").focus;
               return false;
           }
           if (document.getElementById("<%=DropDownList4.ClientID%>").selectedIndex == 0) {
               alert("Please Select District");
               document.getElementById("<%=DropDownList4.ClientID%>").focus;
               return false;
           }
           if (document.getElementById("<%=DropDownList5.ClientID%>").selectedIndex == 0) 
           {
               alert("Please Select City");
               document.getElementById("<%=DropDownList5.ClientID%>").focus;
               return false;
           }
           if (document.getElementById("<%=TextBox4.ClientID%>").value == "") {
               alert("Email id can not be blank ");
               document.getElementById("<%=TextBox4.ClientID%>").focus;
               return false;
           }
           var emailExp = /^(\".*\"|[A-Za-z]\w*)@(\[\d{1,3}(\.\d{1,3}){3}]|[A-Za-z]\w*(\.[A-Za-z]\w*)+)$/;
           var mail = document.getElementById("<%=TextBox4.ClientID%>").value;
           var mail1 = mail.match(emailExp);
           if (mail1 == null) {
               alert("Your email address seems incorrect. Please try again.");
               document.getElementById("<%=TextBox4.ClientID%>").focus;
               return false;
           }
           if (document.getElementById("<%=TextBox5.ClientID%>").value == "") {
               alert("Password Feild can not be blank");
               document.getElementById("<%=TextBox5.ClientID%>").focus;
               return false;
           }
           if (document.getElementById("<%=TextBox6.ClientID%>").value == "") {
               alert("Confirm Password Feild can not be blank");
               document.getElementById("<%=TextBox6.ClientID%>").focus;
               return false;
           }
           var pwd = document.getElementById("<%=TextBox5.ClientID%>").value;
           var cpwd = document.getElementById("<%=TextBox6.ClientID%>").value
           if (pwd != cpwd) {
               alert("Password and Confirm Password Both Must be same.");
               document.getElementById("<%=TextBox5.ClientID%>").focus;
               document.getElementById("<%=TextBox6.ClientID%>").focus;
               return false;
           }
           var M = document.getElementById("<%=RadioButton1.ClientID%>");
           var F = document.getElementById("<%=RadioButton2.ClientID%>");
           if (M.checked == false && F.checked == false) {
               alert("Please Select Gender or Male/Female");
               document.getElementById("<%=RadioButton1.ClientID%>").focus;
               document.getElementById("<%=RadioButton2.ClientID%>").focus;
               return false;
           }
           var T = document.getElementById("<%=CheckBox1.ClientID%>");
           var E = document.getElementById("<%=CheckBox2.ClientID%>");
           var H = document.getElementById("<%=CheckBox3.ClientID%>");
           if (T.checked == false && E.checked == false && H.checked == false) {
               alert("Please Select Languages.");
               document.getElementById("<%=CheckBox1.ClientID%>").focus;
               document.getElementById("<%=CheckBox2.ClientID%>").focus;
               document.getElementById("<%=CheckBox3.ClientID%>").focus;
               return false;
           }
           if (document.getElementById("<%=TextBox7.ClientID%>").value == "") {
               alert("Please Enter Your Address.");
               document.getElementById("<%=TextBox7.ClientID%>").focus;
               return false;
           }
           var A = document.getElementById("<%=RadioButton3.ClientID%>");
           var U = document.getElementById("<%=RadioButton4.ClientID%>");
           if (A.checked == false && U.checked == false) {
               alert("Please Select Blood or Available/Unavailable");
               document.getElementById("<%=RadioButton3.ClientID%>").focus;
               document.getElementById("<%=RadioButton4.ClientID%>").focus;
               return false;
           }
           return true;
       }

    </script>
    <div id="login">
  
         <center>
       <%--    ----boaeder desing------------%>
            <fieldset bg-color="#B5E9E5">

            <table class="auto-style4" border="0" cellpadding="0" cellspacing="0">
            <%--<tr>
                <td class="auto-style14"  colspan="2"  Font-Bold="True"></td>
            </tr>--%>
            <tr bgcolor="#507CD1">
                <td class="auto-style17"  colspan="2"  Font-Bold="True">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong translate="yes" style=" color: #000000; background-color: #507CD1">&nbsp;&nbsp;REGISTATION</strong></td>
            </tr>
            <tr>
                <td class="auto-style14"  colspan="2"  Font-Bold="True"></td>
            </tr>
            <tr>
                <td class="auto-style5"><strong style="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Full Name :&nbsp; </strong></td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr><br/>
            <tr>
                <td class="auto-style5"><strong style="/*color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;, Times, serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 183, 68); text-decoration-style: initial; text-decoration-color: initial;*/">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Date Of Birth:</strong></td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong style="/*color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;, Times, serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 183, 68); text-decoration-style: initial; text-decoration-color: initial;*/">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Blood Group:</strong></td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="19px" style="margin-left: 0px" Width="130px" AutoPostBack="True">
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
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong style="/*color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;, Times, serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 183, 68); text-decoration-style: initial; text-decoration-color: initial;*/">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phone:</strong></td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox3" runat="server" MaxLength="10"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong style="/*color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;, Times, serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 183, 68); text-decoration-style: initial; text-decoration-color: initial;*/">&nbsp;&nbsp; Select Country :</strong></td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DropDownList2" runat="server" style="margin-left: 0px" Height="19px" Width="130px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                        <asp:ListItem Text="---Select---" Value="Select"/>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong style="/*color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;, Times, serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 183, 68); text-decoration-style: initial; text-decoration-color: initial;*/">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Select State :</strong></td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DropDownList3" runat="server" style="margin-left: 0px" Height="19px" Width="130px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                        <asp:ListItem Text="---Select---" Value="select"/>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong style="/*color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;, Times, serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 183, 68); text-decoration-style: initial; text-decoration-color: initial;*/">&nbsp;&nbsp;&nbsp;&nbsp; Select District:</strong></td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DropDownList4" runat="server" Height="19px" style="margin-left: 0px" Width="130px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                        <asp:ListItem Text="---Select---" Value="select"/>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong style="/*color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;, Times, serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 183, 68); text-decoration-style: initial; text-decoration-color: initial;*/">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Select City:</strong></td>
                <td class="auto-style16">
                    <asp:DropDownList ID="DropDownList5" runat="server" Height="19px" style="margin-left: 0px" Width="130px" AutoPostBack="True">
                        <asp:ListItem Text="---Select---" Value="select"/>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong style="/*color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;, Times, serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 183, 68); text-decoration-style: initial; text-decoration-color: initial;*/">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email:</strong></td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong style="/*color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;, Times, serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 183, 68); text-decoration-style: initial; text-decoration-color: initial;*/">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password:</strong></td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong style="/*color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;, Times, serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 183, 68); text-decoration-style: initial; text-decoration-color: initial;*/">ConfirmPassword:</strong></td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong style="/*color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;, Times, serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 183, 68); text-decoration-style: initial; text-decoration-color: initial;*/">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gender:</strong></td>
                <td class="auto-style5">
                    <asp:RadioButton ID="RadioButton1" runat="server"  Font-Bold="True" GroupName="r1" Text="Male" />
                    <asp:RadioButton ID="RadioButton2" runat="server"  Font-Bold="True" GroupName="r1" Text="Female" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong style="/*color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;, Times, serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 183, 68); text-decoration-style: initial; text-decoration-color: initial;*/">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Language:</strong></td>
                <td class="auto-style5">
                    <asp:CheckBox ID="CheckBox1" runat="server"   Font-Bold="True" Text="Telugu" />
                    <asp:CheckBox ID="CheckBox2" runat="server"  Font-Bold="True" Text="Hindi" />
                    <asp:CheckBox ID="CheckBox3" runat="server" Font-Bold="True" Text="English" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong style="/*color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;, Times, serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 183, 68); text-decoration-style: initial; text-decoration-color: initial;*/">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Address:</strong></td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong style="/*color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;, Times, serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 183, 68); text-decoration-style: initial; text-decoration-color: initial;*/">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Blood:</strong></td>
                <td class="auto-style12">
                    &nbsp;<asp:RadioButton ID="RadioButton3" runat="server" Font-Bold="True" GroupName="r2" Text="Available"/>
                    <asp:RadioButton ID="RadioButton4" runat="server" Font-Bold="True" GroupName="r2" Text="UnAvailable"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong style="/*color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;, Times, serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 183, 68); text-decoration-style: initial; text-decoration-color: initial;*/">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Photo:</strong></td>
                <td class="auto-style10">
                    &nbsp;&nbsp;
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="20px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="29px" ImageUrl="~/image/Staff-Login.jpg" Width="81px" OnClick="ImageButton1_Click" />
                </td>
                <td class="auto-style12">
                    <asp:Button ID="Button1" runat="server"  Height="19px" Text="Submit" Width="67px" BackColor="#3399FF" ForeColor="Black" OnClick="Button1_Click" OnClientClick="return registation();"/>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Height="20px" Text="Reset" Width="63px" BackColor="#3399FF" OnClick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
        </table>
            </fieldset>
  </center>
 
        
    </div>
 </form>
</body>
</asp:Content>
