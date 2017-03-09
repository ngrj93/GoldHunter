<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GoldHunter._Default" %>
<!DOCTYPE html>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

<html lang="en" class="no-js" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="css/effect1.css"/>
    <link rel="stylesheet" href="css/style.css"/>
    
</head>

<body>
    <div id="ip-container" class="ip-container">			
        <!-- initial header -->
		<div class="ip-header">
		    <div class="ip-logo">
			    <img src="img/new-logo.png" height="90" style="opacity:0.85"/>
			</div>
			<div class="ip-loader">
				<svg class="ip-inner" width="60px" height="60px" viewBox="0 0 80 80">
					<path class="ip-loader-circlebg" d="M40,10C57.351,10,71,23.649,71,40.5S57.351,71,40.5,71 S10,57.351,10,40.5S23.649,10,40.5,10z"/>
					<path id="ip-loader-circle" class="ip-loader-circle" d="M40,10C57.351,10,71,23.649,71,40.5S57.351,71,40.5,71 S10,57.351,10,40.5S23.649,10,40.5,10z"/>
				</svg>
			</div>
		</div>
        
        <div id="page">
            <div class="banner">
			    <img src="img/new-logo.png" width="300" height="50" />
			</div>

            <form id="form1" runat="server" defaultbutton="Button1">
            <!-- main login page code -->
            <div class="container">
                <div class="login">
                    <h1>Login</h1>
                        <p style="color: #930" id="error" runat="server"></p>
                        <p style="color: green" id="logout" runat="server"></p>
                        <p><asp:TextBox ID="TextBox1" runat="server" placeholder="Username" required="true"></asp:TextBox></p>
                        <p><asp:TextBox ID="TextBox2" runat="server" placeholder="Password" TextMode="Password" required="true"></asp:TextBox></p>
                        <p style="text-align:right"><asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Sign Up!" UseSubmitBehavior="False" CssClass="btn" />
                            &nbsp;<asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" /></p>
                    
                </div>
                <div class="login-help">
                    <p>Forgot your password? <a href="Reset.aspx">Click here to reset it</a>.</p>
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
              

    </div>
	<script src="js/classie.js"></script>
	<script src="js/pathLoader.js"></script>
	<script src="js/main.js"></script>
    
</body>
</html>
      