using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
using App_Code;

public partial class Directional_ChiTietSach : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["QLBB"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        //Response.Write(Request.QueryString["ID"].ToString());
        SqlDataAdapter da = new SqlDataAdapter("select MaSach, TenSach, TacGia, Hinh, ChiTiet, GiaBan from CTSACH where MaSach='" + Request.QueryString["ID"].ToString()+"'", cn);
        DataSet ds = new DataSet();
        da.Fill(ds,"DetailBooks");
        DataList1.DataSource = ds.Tables["DetailBooks"];
        DataList1.DataBind();

        XayDung cart = new XayDung();
        cart.CreateItem();
        Session["Cart"] = cart;
        Button1.Attributes.Add("onclick", "history.back();return false");
    }
}