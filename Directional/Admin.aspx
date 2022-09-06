<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Directional_Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-size:20px;">
       <h1 style="text-align:center; background-color:lightblue; font-size:50px; padding:0 0; margin: 0 0;">Rockberry Bookstore</h1>
        <br />
        <br />
        <div style="margin-left:450px;">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:TemplateField HeaderText="Mã Sách">  
                        <ItemTemplate>  
                            <asp:Label ID="lbl_ID" runat="server" Text='<%#Eval("MaSach") %>'></asp:Label>  
                        </ItemTemplate>  
                    </asp:TemplateField>  
                    <asp:TemplateField HeaderText="Tên Sách">  
                        <ItemTemplate>  
                            <asp:Label ID="lbl_Ten" runat="server" Text='<%#Eval("TenSach") %>'></asp:Label>  
                        </ItemTemplate>  
                    </asp:TemplateField>  
                    <asp:TemplateField HeaderText="Số Lượng">  
                        <ItemTemplate>  
                            <asp:Label ID="lbl_SL" runat="server" Text='<%#Eval("SL") %>'></asp:Label>  
                        </ItemTemplate>
                        <EditItemTemplate>  
                        <asp:TextBox ID="txt_SL" runat="server" Text='<%#Eval("SL") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                    </asp:TemplateField>  
                    <asp:TemplateField HeaderText="Giá Bán">  
                        <ItemTemplate>  
                            <asp:Label ID="lbl_GB" runat="server" Text='<%#Eval("GiaBan") %>'></asp:Label>  
                        </ItemTemplate>  
                        <EditItemTemplate>  
                        <asp:TextBox ID="txt_GB" runat="server" Text='<%#Eval("GiaBan") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                    </asp:TemplateField>  
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="btn_Edit" runat="server" Text="Edit" CommandName="Edit" /> 
                        </ItemTemplate>
                        <EditItemTemplate>  
                            <asp:Button ID="btn_Update" runat="server" Text="Update" CommandName="Update"/>  
                            <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" CommandName="Cancel"/>  
                        </EditItemTemplate>  
                    </asp:TemplateField>
                    <asp:CommandField ShowDeleteButton="True" ButtonType="Button"  />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <br />
            <br />
            
        </div>
    </div>
        <div style="margin-left:570px;">
            <asp:Label ID="Label1" runat="server" Text="Mã Sách"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox><br />
            <asp:Label ID="Label2" runat="server" Text="Tên Sách"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox><br />
            <asp:Label ID="Label3" runat="server" Text="Tên Tác Giả"></asp:Label>&nbsp;&nbsp;
            <asp:TextBox ID="TextBox8" runat="server" Width="200px"></asp:TextBox><br />
            <asp:Label ID="Label9" runat="server" Text="Thể Loại"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox><br />
            <asp:Label ID="Label4" runat="server" Text="Hình"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:FileUpload ID="FileUpload1" runat="server" /><br />
            <asp:Label ID="Label5" runat="server" Text="Giá Bán"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox><br />
            <asp:Label ID="Label6" runat="server" Text="Số Lượng"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox5" runat="server" Width="200px"></asp:TextBox><br />
            <asp:Label ID="Label7" runat="server" Text="Nội Dung"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox6" runat="server" Width="200px"></asp:TextBox><br />
            <asp:Label ID="Label8" runat="server" Text="Trạng Thái"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox7" runat="server" Width="200px"></asp:TextBox><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Nhập Sách" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
