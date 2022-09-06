using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
public partial class Directional_LienHe : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["QLBB"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        String sqlin = "insert into LienHe values(N'" + TextBox1.Text + "', N'" + TextBox2.Text + "', N'" + TextBox3.Text + "', N'" + TextBox4.Text + "', N'" + TextBox5.Text + "')";
        SqlCommand cm = new SqlCommand();
        cm.Connection = cn;
        cm.CommandText = sqlin;
        int kq = cm.ExecuteNonQuery();
        if (kq == 1)
        {
            Label1.Text = "Đăng Nhập Thành Công!";
        }
    }
}