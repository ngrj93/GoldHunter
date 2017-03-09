<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="Reset.aspx.cs" Inherits="GoldHunter.WebForm2" %>
<!DOCTYPE html>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

<html lang="en" class="no-js" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Reset Password</title>
    <link rel="stylesheet" href="css/style.css"/>
</head>

<body>
       <div id="page">
            <div class="banner">
			    <a href="Login.aspx"><img src="img/new-logo.png" width="300" height="50" /></a>
			</div>

            <form id="form1" runat="server" defaultbutton="Button1">
            <!-- main login page code -->
            <div class="container">
                <div class="login">
                    <h1>Reset your Password</h1>
                        <p style="color: red;font-size:x-small" id="userun" runat="server"></p>
                        <p><asp:TextBox ID="TextBox1" runat="server" placeholder="Enter your Username" required="true" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox></p>
                        <p><asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Width="273px" Visible="False" ReadOnly="True"></asp:TextBox></p>
                        <p><asp:TextBox ID="TextBox4" runat="server" placeholder="Answer" required="true" Visible="False" OnTextChanged="TextBox4_TextChanged" AutoPostBack="True"></asp:TextBox></p>
                        <p><asp:TextBox ID="TextBox2" runat="server" placeholder="New Password" TextMode="Password" required="true" Visible="False"></asp:TextBox></p>
                        <p><asp:TextBox ID="TextBox5" runat="server" placeholder="Confirm Password" TextMode="Password" required="true" Visible="False"></asp:TextBox></p>
                     <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="*Incorrect match" Font-Names="Trebuchet MS" Font-Size="X-Small" SetFocusOnError="True"></asp:CompareValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="*Password must contain only alphanumerics(min 8)" Font-Names="Trebuchet MS" Font-Size="X-Small" SetFocusOnError="True" ValidationExpression="^[a-zA-Z0-9]{8,}$"></asp:RegularExpressionValidator>
                        <p style="text-align:right"><asp:Button ID="Button1" runat="server" Text="Reset" Visible="False" OnClick="Button1_Click" /></p>
                </div>
            </div>
            <section class="about">
                <p class="about-author">
                    &copy; 2015&ndash;NRVS Systems<br/>
                </p>
            </section>
      <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Timer ID="Timer1" runat="server" Interval="6000">
            </asp:Timer>
            <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="adverts" Height="100px" Target="_blank" Width="200px" />
            <asp:XmlDataSource ID="adverts" runat="server" DataFile="~/adverts.xml"></asp:XmlDataSource>
        </ContentTemplate>
    </asp:UpdatePanel>
        </form>
        </div> 
</body>
</html>
            