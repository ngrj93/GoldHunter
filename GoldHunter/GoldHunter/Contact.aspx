<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="GoldHunter.Contact" %>
<!DOCTYPE html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Contact</title>
    <link rel="stylesheet" href="css/stylehome.css"/>
</head>

<body>
    <div class="wrapper">
    <div class="banner">
        <a href="Login.aspx"><img src="img/new-logo.png" width="300" height="50" style="opacity: 0.85"/></a>
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
            <table style="width: 25%;" align="center">
                <tr>
                    <td class="auto-style2">Developer:</td>
                    <td class="auto-style3">Nagaraj Poti</td>
                </tr>
                <tr>
                    <td class="auto-style1">E-mail:</td>
                    <td>ngrj93@gmail.com</td>
                </tr>
                <tr>
                    <td class="auto-style1">Mobile:</td>
                    <td>7838401231</td>
                </tr>
            </table>
            <br />
            <asp:Label ID="Label1" runat="server" Font-Names="Trebuchet MS" ForeColor="#009900" Text="Feedback submitted! Thank you!" Visible="False"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width="544px" placeholder="Feedback" Height="74px"></asp:TextBox> 
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit Feedback" OnClick="Button1_Click" />
        </section>
    </div>
            </form>
        <div class="push"></div>
    </div>
    <div class="relfoot">
    <div class="footer">
        &copy; 2015&ndash;NRVS Systems
    </div>
        </div>
</body>
</html>

