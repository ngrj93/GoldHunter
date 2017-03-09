<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Download.aspx.cs" Inherits="GoldHunter.Download" %>
<!DOCTYPE html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Download</title>
    <link rel="stylesheet" href="css/stylehome.css"/>
</head>

<body>
    <div class="wrapper">
    <div class="banner">
        <a href="Home.aspx"><img src="img/new-logo.png" width="300" height="50" style="opacity: 0.85"/></a>
    </div>
        <form id="form1" runat="server">
    <div class="container">
        <section class="register">
                <h1>
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="undec" PostBackUrl="~/Home.aspx">Home</asp:LinkButton>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
                <asp:LinkButton ID="LinkButton2" runat="server" CssClass="undec" PostBackUrl="~/Download.aspx">Download</asp:LinkButton>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
                <asp:LinkButton ID="LinkButton3" runat="server" CssClass="undec" PostBackUrl="~/Contact.aspx">Contact</asp:LinkButton>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
                <asp:LinkButton ID="LinkButton4" runat="server" CssClass="undec" PostBackUrl="~/Logout.aspx">Logout <%=Session["UID"] %></asp:LinkButton></h1>
        </section>
        <section class="register">
            <table style="width: 41%;" align="center">
                <tr>
                    <td class="auto-style2" colspan="2">System Requirements: -</td>
                </tr>
                <tr>
                    <td class="auto-style4">Operating System:</td>
                    <td class="auto-style3">Windows 7 or above</td>
                </tr>
                <tr>
                    <td class="auto-style1">.Net Framework:</td>
                    <td>3.5 or above</td>
                </tr>
                <tr>
                    <td class="auto-style1">Hard disk space:</td>
                    <td>min 512 MB</td>
                </tr>
            </table><br />
            <asp:ImageButton ID="ImageButton1" runat="server" Height="136px" ImageUrl="~/img/download.png" Width="314px" OnClick="ImageButton1_Click" />
            <br />
        </section>
    </div>
            </form>
        <div class="push"></div>
    </div>
    <div class="relfoot">
    <div class="footer">
        &copy; 2015&ndash;NRVS Systems
    VS Systems
    </div>
        </div>
</body>
</html>

