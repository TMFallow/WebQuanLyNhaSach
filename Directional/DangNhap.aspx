<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DangNhap.aspx.cs" Inherits="Directional_DangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng Nhập</title>
    <link href="../CSS/DangNhap.css" rel="stylesheet" />
    <style>
    body {font-family: Arial, Helvetica, sans-serif;}

    /* Full-width input fields */
    input[type=text], input[type=password] {
      width: 100%;
      padding: 12px 20px;
      margin: 8px 0;
      display: inline-block;
      border: 1px solid #ccc;
      box-sizing: border-box;
    }

    /* Set a style for all buttons */
    button {
      background-color: lightblue;
      color: black;
      padding: 14px 20px;
      margin: 8px 0;
      border: none;
      cursor: pointer;
      width: 100%;
      border:1px groove black;
    }

    button:hover {
      opacity: 0.8;
    }

    /* Extra styles for the cancel button */
    .cancelbtn {
      width: auto;
      padding: 10px 18px;
      background-color: #f44336;
    }

    /* Center the image and position the close button */
    .imgcontainer {
      text-align: center;
      margin: 24px 0 12px 0;
      position: relative;
    }

    img.avatar {
      width: 40%;
      border-radius: 50%;
    }

    .container {
      padding: 16px;
    }

    span.psw {
      float: right;
      padding-top: 16px;
    }

    /* The Modal (background) */
    .modal {
      display: none; /* Hidden by default */
      position: fixed; /* Stay in place */
      z-index: 1; /* Sit on top */
      left: 0;
      top: 0;
      width: 100%; /* Full width */
      height: 100%; /* Full height */
      overflow: auto; /* Enable scroll if needed */
      background-color: rgb(0,0,0); /* Fallback color */
      background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
      padding-top: 60px;
    }

    /* Modal Content/Box */
    .modal-content {
      background-color: #fefefe;
      margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
      border: 1px solid #888;
      width: 80%; /* Could be more or less, depending on screen size */
    }

    /* The Close Button (x) */
    .close {
      position: absolute;
      right: 25px;
      top: 0;
      color: #000;
      font-size: 35px;
      font-weight: bold;
    }

    .close:hover,
    .close:focus {
      color: red;
      cursor: pointer;
    }

    .header-text{
    position:absolute;
}

    .header-text h2{
    font-family:Georgia;
    font-size:50px;
    color:blanchedalmond;
    margin-bottom:20px;
    justify-content: center;
    align-items: center;
    align-content: center;
    text-align: center;
    display: flexbox;
    margin-left: 520px;
}

    /* Add Zoom Animation */
    .animate {
      -webkit-animation: animatezoom 0.6s;
      animation: animatezoom 0.6s
    }

    @-webkit-keyframes animatezoom {
      from {-webkit-transform: scale(0)} 
      to {-webkit-transform: scale(1)}
    }
  
    @keyframes animatezoom {
      from {transform: scale(0)} 
      to {transform: scale(1)}
    }

    @media screen and (max-width: 300px) {
      span.psw {
         display: block;
         float: none;
      }
      .cancelbtn {
         width: 100%;
      }
    }
    </style>
</head>
<body>
    <header style="background-image:url('../image/Wall Moodboard.jpg');">
    <input type="checkbox" />
    <div class="menu-icon">
        <div class="menu-line">
        </div>
    </div>
    <div class="menu-item">
        <ul>
            <li><a href="../Main.aspx">Trang Chủ</a></li>
            <li><a href="SachMoiXuatBan.aspx">Loại Sách</a></li>
            <li><a href="LienHe.aspx">Liên Hệ</a></li>
        </ul>
    </div><br /><br />
    <div class="header-text">
            <h2>Đăng Nhập Thông Tin</h2><br /><br />
            <button onclick="document.getElementById('id01').style.display='block'" style="width:auto; margin-left:450px; opacity:0.7; width:150px; height:40px;">Đăng Nhập</button>
    </div>
    </header>
    <div style="background-image:linear-gradient(90deg, lightblue, white);">
    <div id="id01" class="modal">
  
   <form class="modal-content animate" method="post" runat="server">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
    </div>
        <div class="container">
            <label for="uname"><b style="color: black">Tên Đăng Nhập</b></label><br />
              <asp:TextBox ID="TextBox1" runat="server" Height="40px" Width="1150px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Không Để Trống" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
              <label for="psw"><b style="color:black">Mật Khẩu</b></label><br />
              <asp:TextBox ID="TextBox2" runat="server" Height="40px" Width="1150px" TextMode="Password" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Không Để Trống" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <p style="margin-left:500px;"><asp:Button ID="Button1" runat="server"  Text="Đăng Nhập" BackColor="LightBlue" Height="40px" Width="100px" OnClick="Button1_Click"/></p><asp:Label ID="Label1" runat="server" Text="" ForeColor="Black"></asp:Label>
         </div>
        <div class="container" style="background-color:#f1f1f1">
             <p style="color:black; font-size:15px;">Nếu Bạn Chưa Có Tài Khoản Hãy Đăng Ký:<a href="DangKy.aspx">&nbsp;Tại Đây!</a></p>
            <p style="color:black; font-size:15px;">Admin Đăng Nhập:<a href="DangNhapAdmin.aspx">&nbsp;Tại Đây!</a></p>
             <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn" value="btnDN">Cancel</button>
        </div>
    </form>
    </div>
    </div>

    <script>
        var modal = document.getElementById('id01');

        window.onclick = function (event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    </script>  
</body>
</html>
