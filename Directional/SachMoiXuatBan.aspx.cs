using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using App_Code;

public partial class Directional_SachMoiXuatBan : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["QLBB"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter("select Hinh, TenSach, GiaBan, MaSach from CTSACH where TenNhom = N'Văn Học'", cn);
        SqlDataAdapter da1 = new SqlDataAdapter("select Hinh, TenSach, GiaBan, MaSach from CTSACH where TenNhom=N'Khoa Học'", cn);
        SqlDataAdapter da2 = new SqlDataAdapter("select Hinh, TenSach, GiaBan, MaSach from CTSACH where TenNhom=N'Cổ Tích'", cn);
        SqlDataAdapter da3 = new SqlDataAdapter("select Hinh, TenSach, GiaBan, MaSach from CTSACH where TenNhom=N'Lịch Sử'", cn);

        DataSet ds = new DataSet();
        DataSet ds1 = new DataSet();
        DataSet ds2 = new DataSet();
        DataSet ds3 = new DataSet();

        da.Fill(ds, "Detail");
        da1.Fill(ds1,"Science");
        da2.Fill(ds2, "Fairy");
        da3.Fill(ds3, "History");

        DataList1.DataSource = ds.Tables["Detail"];
        DataList1.DataBind();

        DataList2.DataSource = ds1.Tables["Science"];
        DataList2.DataBind();

        DataList3.DataSource = ds2.Tables["Fairy"];
        DataList3.DataBind();

        DataList4.DataSource = ds3.Tables["History"];
        DataList4.DataBind();

        XayDung cart = new XayDung();
        cart.CreateItem();
        Session["Cart"] = cart;
    }
}