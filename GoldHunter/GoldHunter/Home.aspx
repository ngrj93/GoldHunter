<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="GoldHunter.WebForm3" %>
<!DOCTYPE html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Home</title>
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
            <p>
                GoldHunter is a collection of machine learning algorithms for data mining tasks. The algorithms can either be applied directly to a dataset or called from your own .NET code.
                GoldHunter contains tools for data pre-processing, classification, regression, clustering, association rules, and visualization. It is also well-suited for developing new machine learning schemes.<br /><br />
                GoldHunter is open source software issued under the GNU General Public License.
            </p>
            <br />
            <asp:Image ID="Image1" runat="server" ImageUrl="~/img/open.jpg" />
            <br />
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



