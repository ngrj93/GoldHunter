<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="Reg.aspx.cs" Inherits="GoldHunter.WebForm1" %>
<!DOCTYPE html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Sign Up</title>
    <link rel="stylesheet" href="css/stylereg.css"/>
</head>

<body>
    <div class="wrapper">
    <form id="form1" runat="server">
    <div class="banner">
        <a href="Login.aspx"><img src="img/new-logo.png" width="300" height="50" style="opacity: 0.85"/></a>
    </div>
    <div class="container">
        <section class="register">
            <h1>Sign Up</h1>
            <asp:HiddenField ID="HiddenField1" runat="server" />
            <p style="color: red" id="error" runat="server"></p>
            <div class="reg_section personal_info">
                <h3>Your Personal Information</h3>
                <p style="color: red;font-size:x-small" id="userun" runat="server"></p>
                <p style="color: green;font-size:x-small" id="userun2" runat="server"></p>
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Your Desired Username" required="true" Width="275px" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Your E-mail Address" required="true" Width="275px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="*Enter valid E-mail ID" Font-Names="Trebuchet MS" Font-Size="X-Small" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>
            <div class="reg_section password">
                <h3>Your Password</h3>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" placeholder="Your Password" required="true" Width="275px"></asp:TextBox>
                <br />
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" placeholder="Confirm Password" required="true" Width="275px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="*Incorrect match" Font-Names="Trebuchet MS" Font-Size="X-Small" SetFocusOnError="True"></asp:CompareValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="*Password must contain only alphanumerics(min 8)" Font-Names="Trebuchet MS" Font-Size="X-Small" SetFocusOnError="True" ValidationExpression="^[a-zA-Z0-9]{8,}$"></asp:RegularExpressionValidator>
            </div>
            <div class="reg_section password">
                <h3>Mandatory information</h3>
                <asp:DropDownList ID="DropDownList1" runat="server" placeholder="Occupation" Font-Bold="False" Width="278px" Font-Italic="False">
                    <asp:ListItem Selected="True" Value="0">Your Occupation</asp:ListItem>
                    <asp:ListItem Value="1">Researcher</asp:ListItem>
                    <asp:ListItem Value="2">Teacher</asp:ListItem>
                    <asp:ListItem Value="3">Student</asp:ListItem>
                    <asp:ListItem Value="4">Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" Display="Dynamic" ErrorMessage="*Please select an occupation" Font-Names="Trebuchet MS" Font-Size="X-Small" InitialValue="0"></asp:RequiredFieldValidator>
                <asp:TextBox ID="TextBox5" runat="server" placeholder="Mobile Phone (+91)" required="true" Width="256px" MaxLength="10"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="*Please enter a 10 digit number" Font-Names="Trebuchet MS" Font-Size="X-Small" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine" placeholder="Educational Interests" ForeColor="#4E4E4E" Width="256px"></asp:TextBox>
            </div>
            <div class="reg_section password">
                <h3>Security Question</h3>
                 <asp:DropDownList ID="DropDownList2" runat="server" Width="305px">
                    <asp:ListItem Selected="True" Value="What was the name of your first school?"></asp:ListItem>
                    <asp:ListItem Value="What was your first pet?"></asp:ListItem>
                     <asp:ListItem Value="What was your first job?"></asp:ListItem>
                     <asp:ListItem Value="What time were you born(HH:MM)?"></asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="TextBox7" runat="server" placeholder="Answer" required="true" Width="256px" MaxLength="50"></asp:TextBox>
            </div>
            <p class="terms">
                <label><input type="checkbox" name="remember_me" id="remember_me" required="true">I have read the terms and conditions</label>
            </p>
            <p class="submit"><asp:Button ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" /></p>
        </section>
    </div>
            </form>
    <div class="push"></div>
    </div>
    <div class="footer">
        &copy; 2015&ndash;NRVS Systems
    </div>
    
</body>
</html>



