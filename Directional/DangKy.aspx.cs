using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Directional_DangKy : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["QLBB"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        if (TextBox4.Text == TextBox3.Text)
        {
            String insert = "insert into TaiKhoan values(N'" + TextBox2.Text + "', N'" + TextBox3.Text + "')";
            String sqlin = "insert into DangKy values(N'" + TextBox1.Text + "', N'" + TextBox2.Text + "', N'" + TextBox3.Text + "')";
            SqlCommand cm = new SqlCommand();
            cm.Connection = cn;
            cm.CommandText = insert;
            int kq = cm.ExecuteNonQuery();
            SqlCommand cm1 = new SqlCommand();
            cm1.Connection = cn;
            cm1.CommandText = sqlin;
            cm1.ExecuteNonQuery();
            if (kq == 1)
            {
                Label1.Text = "Đăng Ký Thành Công";
                Response.Redirect("~/Directional/DangNhap.aspx");
            }
            else
            {
                Label1.Text = "Mật Khẩu Bị Sai";
            }
        }
    }
}