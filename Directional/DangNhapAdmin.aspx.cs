using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class Directional_DangNhapAdmin : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["QLBB"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        string str = "select count(*) from TaiKhoanAdmin where TenTK='" + username.Text + "' and MatKhau='" + password.Text + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = str;
        int check = (int)cmd.ExecuteScalar();
        if(check == 1)
        {
            Response.Redirect("~/Directional/Admin.aspx");
        }
    }
}