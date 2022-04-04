<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Login"></asp:Label>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator">Incorrect Login</asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" required="required"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
&nbsp;<asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="CustomValidator" OnServerValidate="CustomValidator1_ServerValidate">More than 8 characters are required</asp:CustomValidator>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" required="required"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Confirm passwords"></asp:Label>
&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="CompareValidator">Mismatched passwords</asp:CompareValidator>
            <br />
            <asp:TextBox ID="TextBox3" runat="server"  required="required"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="RegularExpressionValidator">Wrong email</asp:RegularExpressionValidator>
            <br />
            <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged" required="required"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Age"></asp:Label>
&nbsp;<asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="CustomValidator" OnServerValidate="CustomValidator2_ServerValidate">Wrong age</asp:CustomValidator>
            <br />
            <asp:TextBox ID="TextBox5" runat="server"  required="required"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send" />
        </div>
    </form>
</body>
</html>
