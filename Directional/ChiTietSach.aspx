<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChiTietSach.aspx.cs" Inherits="Directional_ChiTietSach" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chi Tiết Sách</title>
    <link href="../CSS/Main.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 50px;
        }
        .auto-style2 {
            height: 300px;
            width: 300px;
        }
        .auto-style3{
            height:300px;
            width:500px;
            line-height:25px;
            text-align:left;
        }
    </style>
</head>
<body>
    <header style="background-image:url('../image/The Blue.png'); height:70px;">
        <input type="checkbox" />
    <div class="menu-icon">
        <div class="menu-line">
        </div>
    </div>
    <div class="menu-item">
        <ul>
            <li><a href="Main.aspx">Trang Chủ</a></li>
            <li><a href="Directional/DangNhap.aspx">Đăng Nhập</a></li>
            <li><a href="Directional/SachMoiXuatBan.aspx">Loại Sách</a></li>
            <li><a href="#">Giúp Đỡ</a></li>
            <li><a href="#">Liên Hệ</a></li>
        </ul>
    </div>
    <div class="header-text">
        <h1 style="color:lightblue;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Rockberry's Bookstore</h1>
    </div>
    </header>
    <div style=" margin-left: 320px; margin-top:50px;">
    <form id="form1" runat="server">
    <div>
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
            <div style="border:groove 2px black;">
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style1" style="border:groove 2px black;">
                            <p style="font-family:Georgia; font-size:20px; font-weight:bold; text-align:center; color:black;"><asp:Label ID="Label2" runat="server" Text='<%# Eval("TenSach") %>'></asp:Label></p>
                        </td>
                        <td class="auto-style1" style="border:groove 2px black;">
                             <p style="font-family:Georgia; font-size:20px; font-weight:bold; text-align:center; color:black;"><asp:Label ID="Label3" runat="server" Text='<%# Eval("TacGia") %>'></asp:Label></p>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="border:groove 2px black;">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Hinh") %>' Height="300px" Width="300px"/>
                        </td>
                        <td class="auto-style3" style="border:groove 2px black;">
                            <p style="margin-bottom:50px; font-size:20px; margin-left:25px; color:black;"><asp:Label ID="Label4" runat="server" Text='<%# Eval("ChiTiet") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1" style="border:groove 2px black;">
                           <p style="font-weight:bold; font-size:20px; text-align:center; color:black;"> <asp:Label ID="Label5" runat="server" Text='<%# Eval("GiaBan") %>'></asp:Label> </p>
                        </td>
                        <td class="auto-style1" style="border:groove 2px black;">
                            <div style="margin-left:20px;">
                           <a href="GioHang.aspx?ID=<%#Eval("MaSach")%>"><asp:ImageButton ID="ImageButton1" runat="server" Height="30px" ImageUrl="~/image/shopping cart.jpg" Width="35px" /></a>
                            </div>
                        </td>
                    </tr>
                </table>
                </div>
            </ItemTemplate>
        </asp:DataList>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Trở Về" />
    </div>
    </form>
  </div><br /><br /><br /><br /><br /><br /><br /> 
  <div style="background-color:lightblue; text-align:center; height:60px;">
        <h1 style="color:black; font-size:25px;">The copy right is belong to Rockberry's Bookstore</h1>
  </div>
</body>
</html>
