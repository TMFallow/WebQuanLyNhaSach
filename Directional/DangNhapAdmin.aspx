<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DangNhapAdmin.aspx.cs" Inherits="Directional_DangNhapAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng Nhập Admin</title>
    <link href="../CSS/SachMoiXuatBan.css" rel="stylesheet" />
    <style>
        .login{
            margin-left:600px;
            font-size:20px;
              }
        .submit{
            margin-left:600px;
            box-sizing:border-box;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1 style="text-align:center; background-color:lightblue; font-size:50px; padding:0 0; margin: 0 0;">Rockberry Bookstore</h1>
        <p style="font-size:35px; text-align:center;"><asp:Label ID="Label1" runat="server" Text="Đăng Nhập"></asp:Label></p>
        <div class="login">
            <asp:Label ID="Label2" runat="server" Text="Tên Đăng Nhập"></asp:Label>&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="username" runat="server" Width="201px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="user" runat="server" ErrorMessage="Tên Đăng Nhập Không Được Để Trống" ForeColor="Red" ControlToValidate="username"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Mật Khẩu"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="password" runat="server" Width="201px" TextMode="Password"></asp:TextBox>          
            <asp:RequiredFieldValidator ID="pass" runat="server" ErrorMessage="Mật Khẩu Không Được Để Trống!" ControlToValidate="password" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
        </div>
        <div class="submit">
            <p style="font-size:20px;"><asp:Button ID="Button1" runat="server" Text="Đăng Nhập" Height="27px" Width="350px" /></p>
        </div>
        <div>
            <img src="../image/signin.jfif" alt="" style="width: 1503px" />
        </div>
    </form>
</body>
</html>
