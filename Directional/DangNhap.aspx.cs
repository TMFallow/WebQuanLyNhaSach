using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;  
using System.Web.Configuration;

public partial class Directional_DangNhap : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["QLBB"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        String sql = "select count(*) from TaiKhoan where TenDN = N'" + TextBox1.Text + "' and MatKhau = N'" + TextBox2.Text + "'";
        SqlCommand sm = new SqlCommand();
        sm.Connection = cn;
        sm.CommandType = CommandType.Text;
        sm.CommandText = sql;
        int kq = (int)sm.ExecuteScalar();
        if ( kq == 1)
        {
            Response.Write("Đăng Ký Thành Công");
            Response.Redirect("~/Main.aspx");
        }
        else
        {
            Response.Write("Sai Tên Đăng Nhập Hoặc Mật Khẩu");
        }
        cn.Close();
    }
}