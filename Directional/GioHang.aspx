<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GioHang.aspx.cs" Inherits="Directional_GioHang"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Giỏ Hàng</title>
     <link href="../CSS/SachMoiXuatBan.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link href="../CSS/GioHang.css" rel="stylesheet" />
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
            <li><a href="SachMoiXuatBan.aspx">Loại Sách</a></li>
            <li><a href="LienHe.aspx">Liên Hệ</a></li>
        </ul>
    </div>
    <div class="header-text">
        <h1 style="color:black;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Rockberry's Bookstore</h1>
    </div>
    </header>
    <form id="form1" runat="server" >
    <div style="margin-left:280px;">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="70%" OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="Mã Sách">
                    <ItemStyle Font-Bold="true" />
                 </asp:BoundField>
                <asp:BoundField DataField="Name" HeaderText="Tên Sách" >
                    <ItemStyle Font-Bold="true" />
                 </asp:BoundField>
                <asp:ImageField DataImageUrlField="Picture" HeaderText="Hình" ItemStyle-Height="100px" ItemStyle-Width="100px">
                    <ControlStyle Height="100px" Width="100px" />
<ItemStyle Height="100px" Width="100px"></ItemStyle>
                </asp:ImageField>
                <asp:TemplateField HeaderText="Số Lượng">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%#Eval("NumberhaveSale") %>'></asp:TextBox>
                    </ItemTemplate>
                   <ItemStyle Font-Bold="true" />
                </asp:TemplateField>
                <asp:BoundField DataField="Price" HeaderText="Giá Tiền">
                    <ItemStyle Font-Bold="true" />
                 </asp:BoundField>
                 <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="true" ForeColor="White" />
        </asp:GridView>
        <p style="color:black; font-size:20px;"><asp:Button ID="Button1" runat="server" Text="Trở Về" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;  Tổng Thành Tiền: &nbsp; <asp:Label ID="Label1" runat="server" Text=""></asp:Label>&nbsp; VND
        </p>
    </div>
    <div class="row">
          <div class="col-50">
            <h3>Đăng Ký Thông Tin Mua Hàng</h3>
            <label for="fname"><i class="fa fa-user"></i> Mã Khách Hàng</label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Không Để Trống" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>
            <label for="fname"><i class="fa fa-user"></i>Tên Khách Hàng </label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Không Để Trống" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator>
              <label for="fname"><i class="fa fa-user"></i>Địa Chỉ </label>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Không Để Trống" ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator>
              <label for="fname"><i class="fa fa-user"></i>Số Điện Thoại </label>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Không Để Trống" ControlToValidate="TextBox6" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <p style="margin-left:700px; height:50px;"><asp:Button ID="Button2" runat="server" Text="Mua Sách" OnClick="Button2_Click" Width="187px" /></p>
        <p style="text-align:center; padding:0 0; font-family:'Times New Roman'; color:red;"><asp:Label ID="Label2" runat="server" Text=""></asp:Label></p>
    </form>
    <script>
        var codeToInject = 'Object.defineProperty(navigator,"platform", { \
                            get: function () { return "MacIntel"; }, \
                            set: function (a) {} \
                            });';
        var script = document.createElement('script');
        script.appendChild(document.createTextNode(codeToInject));
        (document.head || document.documentElement).appendChild(script);
        script.parentNode.removeChild(script);
    </script>
</body>
</html>
