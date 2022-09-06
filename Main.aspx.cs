using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class Main : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["QLBB"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        String sql = "select MaSachKM, TenSachKM, HinhSKM, GiaBanKM from CTSACHKM";
        SqlDataAdapter data = new SqlDataAdapter(sql, cn);
        DataSet dataset = new DataSet();
        data.Fill(dataset,"DetailOfBook");
        DataList2.DataSource = dataset.Tables["DetailOfBook"];
        DataList2.DataBind();
        cn.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        String sql1 = "select MaSach, TenSach, Hinh, GiaBan from CTSACH where TenSach like '%" + TextBox1.Text + "%' or TenNhom like N'%" + TextBox1.Text + "%'";
        SqlDataAdapter data1 = new SqlDataAdapter(sql1, cn);
        DataSet das = new DataSet();
        data1.Fill(das,"Search");
        DataList3.DataSource = das.Tables["Search"];
        DataList3.DataBind();
        cn.Close();
    }
}