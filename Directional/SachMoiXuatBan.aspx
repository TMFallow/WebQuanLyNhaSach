<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SachMoiXuatBan.aspx.cs" Inherits="Directional_SachMoiXuatBan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../CSS/SachMoiXuatBan.css" rel="stylesheet" />
    <title>Sách Mới Xuất Bản</title>
    <style>
            .tab {
              overflow: hidden;
              border: 1px solid #ccc;
              background-color: lightblue;
            }
            .tab button {
              background-color: inherit;
              float: left;
              border: none;
              outline: none;
              cursor: pointer;
              padding: 20px 20px;
              margin-left:100px;
              transition: 0.3s;
            }
            .tab button:hover {
              background-color: #ddd;
            }
            .tab button.active {
              background-color: #ccc;
            }
            .tabcontent {
              display: none;
              padding: 6px 12px;
              border: 1px solid #ccc;
              border-top: none;
            }
            .tabcontent {
              animation: fadeEffect 1s; /* Làm Mờ Trong 1s */
            }
            @keyframes fadeEffect {
              from {opacity: 0;}
              to {opacity: 1;}
            }

            #anima:hover{animation-timing-function:ease-in-out;}
            </style>
</head>
<body>
    <header>
    <input type="checkbox" />
    <div class="menu-icon">
        <div class="menu-line">
        </div>
    </div>
    <div class="menu-item">
        <ul>
            <li><a href="../Main.aspx">Trang Chủ</a></li>
            <li><a href="DangNhap.aspx">Đăng Nhập</a></li>
            <li><a href="LienHe.aspx">Liên Hệ</a></li>
        </ul>
    </div>
    <div class="header-text">
        <h1 style="color:black;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Rockberry Bookstore</h1>
    </div>
    </header>
    <div class="tab">
        <button class="tablinks" onclick="SachMoi(event, 'SachVanHoc')" id="defaultOpen">Sách Văn Học</button>
        <button class="tablinks" onclick="SachMoi(event, 'SachKhoaHoc')">Sách Khoa Học</button>
        <button class="tablinks" onclick="SachMoi(event, 'SachThieuNhi')">Sách Thiếu Nhi</button>
        <button class="tablinks" onclick="SachMoi(event, 'SachLichSu')">Sách Lịch Sử</button>
    </div>
    <form id="form3" runat="server">
              <div id="SachVanHoc" class="tabcontent">
                <h3>Sách Văn Học</h3>
                  <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" RepeatDirection="Horizontal">
                      <ItemTemplate>
                          <div style="border:groove 2px black;">
                              <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Hinh") %>' Height="300px" Width="300px" /><br />
                              <p style="text-align:center;"><asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSach") %>' Font-Size="20px" ></asp:Label></p><br />
                              <p style="font-size:20px; font-weight:bold; margin-left:10px;"><asp:Label ID="Label2" runat="server" Text='<%# Eval("GiaBan") %>'></asp:Label>
                              <a href="ChiTietSach.aspx?ID=<%#Eval("MaSach")%>" style="margin-left:140px;">Chi Tiết</p></a>                        
                              <a href="GioHang.aspx?ID=<%#Eval("MaSach")%>" style="text-align:center; font-size:20px; margin-left:115px;">Mua Sách</a>
                          </div>
                      </ItemTemplate>
                  </asp:DataList>
                </div>
              <div id="SachKhoaHoc" class="tabcontent">
                 <h3>Sách Khoa Học</h3>
                  <asp:DataList ID="DataList2" runat="server" RepeatColumns="5">
                      <ItemTemplate>
                          <div style="border:groove 2px black">
                              <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Hinh") %>' Height="300px" Width="300px" /><br />
                              <p style="text-align:center;"><asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSach") %>' Font-Size="20px" ></asp:Label></p><br />
                              <p style="font-size:17px; font-weight:bold; margin-left:10px;"><asp:Label ID="Label2" runat="server" Text='<%# Eval("GiaBan") %>'></asp:Label>
                              <a href="ChiTietSach.aspx?ID=<%#Eval("MaSach")%>" " style="margin-left:130px;">Chi Tiết</a></p>
                              <a href="GioHang.aspx?ID=<%#Eval("MaSach")%>" style="text-align:center; font-size:20px; margin-left:115px;">Mua Sách</a>
                          </div>
                      </ItemTemplate>
                  </asp:DataList>
                 </div>

               <div id="SachThieuNhi" class="tabcontent">
                  <h3>Sách Thiếu Nhi</h3>
                   <asp:DataList ID="DataList3" runat="server" RepeatColumns="5">
                        <ItemTemplate>
                          <div style="border:groove 2px black">
                              <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Hinh") %>' Height="300px" Width="300px" /><br />
                              <p style="text-align:center;"><asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSach") %>' Font-Size="20px" ></asp:Label></p><br />
                              <p style="font-size:17px; font-weight:bold; margin-left:10px;"><asp:Label ID="Label2" runat="server" Text='<%# Eval("GiaBan") %>'></asp:Label>
                              <a href="ChiTietSach.aspx?ID=<%#Eval("MaSach")%>" " style="margin-left:130px;">Chi Tiết</a></p>
                              <a href="GioHang.aspx?ID=<%#Eval("MaSach")%>" style="text-align:center; font-size:20px; margin-left:115px;">Mua Sách</a>
                          </div>
                      </ItemTemplate>
                   </asp:DataList> 
                </div>

                <div id="SachLichSu" class="tabcontent">
                  <h3>Sách Lịch Sử</h3>
                    <asp:DataList ID="DataList4" runat="server" RepeatColumns="5">
                        <ItemTemplate>
                          <div style="border:groove 2px black">
                              <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Hinh") %>' Height="300px" Width="300px" /><br />
                              <p style="text-align:center;"><asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSach") %>' Font-Size="20px"></asp:Label></p><br />
                              <p style="font-size:17px; font-weight:bold; margin-left:10px;"><asp:Label ID="Label2" runat="server" Text='<%# Eval("GiaBan") %>'></asp:Label>
                              <a href="ChiTietSach.aspx?ID=<%#Eval("MaSach")%>" " style="margin-left:130px;">Chi Tiết</a></p>
                              <a href="GioHang.aspx?ID=<%#Eval("MaSach")%>" style="text-align:center; font-size:20px; margin-left:115px;">Mua Sách</a>
                          </div>
                      </ItemTemplate>
                    </asp:DataList>
                  </div>
      </form>
      <div style="background-color:lightblue; text-align:center; height:60px;">
        <h1>The copy right is belong to Rockberry Bookstore</h1>
      </div>
      <script>
             function SachMoi(evt, bookName) {
                 var i, tabcontent, tablinks;
                 tabcontent = document.getElementsByClassName("tabcontent");
                 for (i = 0; i < tabcontent.length; i++) {
                     tabcontent[i].style.display = "none";
                  }
                 tablinks = document.getElementsByClassName("tablinks");
                 for (i = 0; i < tablinks.length; i++) {
                     tablinks[i].className = tablinks[i].className.replace(" active", "");
                  }
                 document.getElementById(bookName).style.display = "block";
                 evt.currentTarget.className += " active";
             }
             document.getElementById("defaultOpen").click();
      </script>

</body>
</html>
