<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Main" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <link href="CSS/Main1.css" rel="stylesheet" />
    <link href='https://fonts.googleapis.com/css?family=Sofia' rel='stylesheet'/>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
    <nav class="w3-sidebar w3-bar-block w3-card w3-top w3-xlarge w3-animate-left" style="display:none;z-index:2;width:40%;min-width:300px" id="mySidebar">
    </nav>
    <style>
        input[type=text] {
              width: 130px;
              box-sizing: border-box;
              border: 2px solid #ccc;
              border-radius: 4px;
              font-size: 16px;
              background-color: white;
              icon:url('image/searchicon.png');
              background-position: 10px 10px; 
              background-repeat: no-repeat;
              padding: 12px 20px 12px 40px;
              -webkit-transition: width 0.4s ease-in-out;
              transition: width 0.4s ease-in-out;
            }

        input[type=text]:focus {
              width: 90%;
            }
        .auto-style1 {
            height: 19px;
            width: 120px;
        }
        .auto-style3 {
            width: 120px;
        }
    </style>
    <div style=" width:100vw; height:10vh; background-color:white; color:black; font-size:30px;">
           <h1 style="color:black; margin-left:100px; font-size:50px; font-family:'Times New Roman';  margin-top:40px;" >Giới Thiệu Về Nhà Sách Rockberry</h1>
     </div>
     <div class="b-header__border">
                
     </div>
     <div class="intro">
        <table>
            <tr>
                <td><img src="image/bujo books.jpg" style="margin-left:150px; margin-top:50px;"/></td>
                <td>
                    <h3 style="font-size:40px; font-family:'Times New Roman' ; margin-left:70px;">Nhà sách Rockberry</h3><br /><br />
                    <p style="text-align:left; font-size:25px; font-family:'Times New Roman'; word-break:keep-all; margin-left:30px; line-height:30px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Đây là nhà sách trực tuyến và đồng thời là trang thương mại điện tử, đến với đây các bạn có thể dễ dàng tìm thấy những cuốn sách hay, đa thể loại của nhiều nhà xuất bản trong và ngoài nước chính hãng. Cùng tiêu chí không ngừng hoàn thiện, nâng cao chất lượng sản phẩm, dịch vụ, Nhà Sách Rockberry cam kết mang đến cho khách hàng trải nghiệm mua sắm trực tuyến an toàn, tiện lợi: cách đặt hàng đơn giản, phương thức thanh toán đa dạng, dịch vụ chăm sóc khách hàng tận tình, chu đáo. </p>
                </td>
            </tr>
        </table>
     </div>
     <h1 style="color:black; margin-left:0px; font-size:50px; font-family:'Times New Roman';  margin-top:0px;  background-image:linear-gradient(180deg, lightblue, white);" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tìm Kiếm Sách Cần Tìm</h1>
     <section >
         <div class="b-header__border">
                
         </div>
     </section>
    <div style="background-image:linear-gradient(180deg, white, lightblue);">
          <div style="margin-left:120px;"> <asp:TextBox ID="TextBox1" runat="server" Height="40px" Width="1200px"></asp:TextBox><asp:Button ID="Button1" runat="server" Text="Tìm Kiếm Sách" Height="40px" Width="150px" OnClick="Button1_Click" />
         <asp:DataList ID="DataList3" runat="server" RepeatColumns="4">
             <ItemTemplate>
                 <table style="width:100%;">
                     <tr>
                         <td class="auto-style1" colspan="2">
                             <p style="color: black; font-size: 20px; font-weight:bold; text-align:center;"><asp:Label ID="Label4" runat="server" Text='<%# Eval("TenSach") %>' Font-Size="Large"></asp:Label></p>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style3" colspan="2">
                             <a href="Directional/ChiTietSach.aspx?ID=<%#Eval("MaSach")%>""><asp:Image ID="Image10" runat="server" ImageUrl='<%# Eval("Hinh") %>' Height="300px" Width="300px"/></a>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style3">
                             <p style="color: black; font-size: 20px; font-weight:bold;"><asp:Label ID="Label5" runat="server" Text='<%# Eval("GiaBan") %>' Font-Size="Large"></asp:Label></p>
                         </td>
                         <td class="auto-style3">
                             <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/image/shopping cart.jpg" Height="40px" Width="70px"  />
                         </td>
                     </tr>
                 </table>
             </ItemTemplate>
         </asp:DataList><br /><br /><br /><br /><br /><br />
              </div>
    </div>
    <h1 style="color:black; margin-left:0px; font-size:50px; font-family:'Times New Roman';  margin-top:0px;  background-image:linear-gradient(180deg, lightblue, white);" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sách Mới Nhập Về</h1>
     <section >
         <div class="b-header__border">
                
         </div>
     </section>
    <div class="w3-row-padding w3-padding-16 w3-center" id="boof">
        <div class="w3-quarter">
            <a href="Directional/SachMoiXuatBan.aspx" title="The Gates of Fairyland"> <asp:Image ID="Image1" runat="server" ImageUrl='image/Gates of Fairyland.jpg' Height="350px" Width="350px" />
            <h2 style="color:black;">The Gates of Fairyland</h2>
            <p style="color:black; font-family:'Times New Roman'; font-size:25px; font-weight:bold;">Giá: 100.000đ</p>
            </a>
        </div>
        <div class="w3-quarter">
            <a href="Directional/SachMoiXuatBan.aspx" title="Jabberwocky"> ><asp:Image ID="Image2" runat="server" ImageUrl='image/Jabberwocky.jpg' Height="350px" Width="350px" />
            <h2 style="color:black;">Jabberwocky</h2>
            <p style="color:black; font-family:'Times New Roman'; font-size:25px; font-weight:bold;">Giá: 150.000đ</p>
            </a>
        </div>
        <div class="w3-quarter">
            <a href="Directional/SachMoiXuatBan.aspx" title="Marie Antoinette: The Journey"> <asp:Image ID="Image3" runat="server" ImageUrl='image/Marie Antoinette The Journey.jpg' Height="350px" Width="350px" />
            <h2 style="color:black;">Marie Antoinette</h2> 
            <p style="color:black; font-family:'Times New Roman'; font-size:25px; font-weight:bold;">Giá: 150.000đ</p>
            </a>
        </div>
        <div class="w3-quarter">
           <a href="Directional/SachMoiXuatBan.aspx" title="Cranford"><asp:Image ID="Image4" runat="server" ImageUrl='image/Cranford.jpg' Height="350px" Width="350px" />
            <h2 style="color:black;">Cranford</h2>
            <p style="color:black; font-family:'Times New Roman'; font-size:25px; font-weight:bold;">Giá: 100.000đ</p>
            </a>
        </div>
        <div class="w3-quarter">
            <a href="Directional/SachMoiXuatBan.aspx" title="Jane Eyre"> <asp:Image ID="Image6" runat="server" ImageUrl='image/Jane Eyre.jpg' Height="350px" Width="350px"/>
            <h2 style="color:black;">Jane Eyre</h2> 
            <p style="color:black; font-family:'Times New Roman'; font-size:25px; font-weight:bold;">Giá: 120.000đ</p>
            </a>
        </div>
        <div class="w3-quarter">
            <a href="Directional/SachMoiXuatBan.aspx" title="Six Swans"> <asp:Image ID="Image7" runat="server" ImageUrl='image/Six Swans.png' Height="350px" Width="350px" />
            <h2 style="color:black;">Six Swans</h2> 
            <p style="color:black; font-family:'Times New Roman'; font-size:25px; font-weight:bold;">Giá: 150.000đ</p>
            </a>
        </div>
        <div class="w3-quarter">
            <a href="Directional/SachMoiXuatBan.aspx" title="The French Revolution"> <asp:Image ID="Image8" runat="server" ImageUrl='image/FR.png' Height="350px" Width="350px" />
            <h2 style="color:black;">The French Revolution</h2> 
            <p style="color:black; font-family:'Times New Roman'; font-size:25px; font-weight:bold;">Giá: 150.000đ</p>
            </a>
        </div>
        <div class="w3-quarter">
            <a href="Directional/SachMoiXuatBan.aspx" title="Black Holes: The Reith Lectures"> <asp:Image ID="Image9" runat="server" ImageUrl='image/Black Holes_ The Reith Lectures.jpg' Height="350px" Width="350px" />
            <h2 style="color:black;">Black Holes: The Reith Lectures (On Sales)</h2> 
            <p style="color:black; font-family:'Times New Roman'; font-size:25px; font-weight:bold; color: #103f8d">Giá: 75.000đ</p>
            </a>
        </div>
    </div>
    
    <div style=" width:100vw; height:10vh; background-color:white; color:black; font-size:30px;">
           <h1 style="color:black; margin-left:100px; font-size:50px; font-family:'Times New Roman'; margin-top:40px;" >Khuyến Mãi Sách</h1>
     </div>
     <div class="b-header__border">
                
     </div>
    <div style="margin-left:110px;">
        <p style="font-family:'Times New Roman'; font-size:30px; color:black; font-weight:bold;"> Thời Gian Còn Lại:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
        <p style="margin-left:200px; font-family:'Times New Roman'; font-size:30px; color:black; font-weight:bold;" id="demo"></p>
    </div><br />
    <div style="background-image:linear-gradient(180deg, white, lightblue);">
        <asp:DataList ID="DataList2" runat="server" RepeatColumns="3">
            <ItemTemplate>
                <table style="width:100%;" border="1">
                    <tr>
                        <td style="font-size:30px; color:black; font-weight:bold; text-align:center;" colspan="3">
                            <p style="font-size:30px; color:black; font-weight:bold;"><asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSachKM") %>' Font-Size="X-Large"></asp:Label></p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="Directional/ChiTietSach.aspx?ID=<%#Eval("MaSachKM")%>""><asp:Image ID="Image5" runat="server" ImageUrl='<%# Eval("HinhSKM") %>' Height="356px" Width="350px"/></a>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-size:25px; color:black; font-weight:bold;" colspan="3">
                             <p style="text-align:center;"><asp:Label ID="Label3" runat="server" Text='<%# Eval("GiaBanKM") %>' Font-Size="X-Large"></asp:Label></p>
                             <a href="#">Mua Sách</a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
    <script>
        // Ngày Bắt Đầu Đếm Ngược
        var countDownDate = new Date("Sep 3, 2021 12:00:00").getTime();

        // Update thời gian
        var x = setInterval(function () {

            // Ngày Hiện Tại
            var now = new Date().getTime();

            // Khoảng Cách Ngày 
            var distance = countDownDate - now;

            // Tính Toán Giữa Ngày Giờ Phút Giây 
            var days = Math.floor(distance / (1000 * 60 * 60 * 24));
            var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
            var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
            var seconds = Math.floor((distance % (1000 * 60)) / 1000);

            // Đưa Ra tg
            document.getElementById("demo").innerHTML = days + "d   " + hours + "h   "
            + minutes + "m   " + seconds + "s  ";
            if (distance < 0) {
                clearInterval(x);
                document.getElementById("demo").innerHTML = "Hết Thời Gian Đã Khuyến Mãi";
            }
        }, 1000);
</script>
    </form>
</asp:Content>


