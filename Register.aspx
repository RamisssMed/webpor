<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebPro.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Admin/Css/bootstrap.css" rel="stylesheet" />
    <link href="Admin/Css/styletry.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <br />
    <div class="container" >
    <div class="row">
       
      1  <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
      2  <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
      3  <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
      4  <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />




         <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox><br />
        <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    </div>
        </div>
    </form>
</body>
</html>
