using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using App_Code;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class Directional_GioHang : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["QLBB"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
            cn.Open();
        if(!IsPostBack)
        { 
            string id = Request.QueryString["ID"].ToString();
            SqlDataAdapter dal = new SqlDataAdapter("select MaSach, TenSach, Hinh, GiaBan from CTSACH where MaSach='" + id + "'", cn);
            DataSet d = new DataSet();
            dal.Fill(d, "BH");
            if (d.Tables[0].Rows.Count > 0)
            {
                string TS = d.Tables[0].Rows[0][1].ToString();
                int Gia = int.Parse(d.Tables[0].Rows[0][3].ToString());
                string hinh = d.Tables[0].Rows[0][2].ToString();
                int SL = 1;
                XayDung cart = new XayDung();
                cart = (XayDung)Session["Cart"];
                cart.InsertProduct(id, TS, hinh, Gia, SL);
                Session["Cart"] = cart;
            }
            XayDung cartl = (XayDung)Session["Cart"];
            DataTable t = cartl.giohang;
            GridView1.DataSource = t;
            GridView1.DataBind();
            ViewState["t"] = t;
            Label1.Text = cartl.TongThanhTien().ToString();
            cn.Close();
        }
        Button1.Attributes.Add("onclick", "history.back();return false");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        String MaS = Request.QueryString["ID"].ToString();
        String TongTien = Label1.Text;
        String insertKH = "insert into KhachHang values(N'" + TextBox3.Text + "', N'" + TextBox4.Text + "', N'" + TextBox5.Text + "', N'" + TextBox6.Text + "', N'"+ MaS +"', "+ TongTien +")";
        SqlDataAdapter da = new SqlDataAdapter(insertKH, cn);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = insertKH;
        int f = cmd.ExecuteNonQuery();
        if (f == 1) 
        {
            Label2.Text="Đăng Ký Thông Tin Mua Hàng Thành Công!";
        }
        cn.Close();
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if(e.Row.RowType == DataControlRowType.DataRow)
        {
            string item = e.Row.Cells[1].Text;
            foreach(Button button in e.Row.Cells[5].Controls.OfType<Button>())
            {
                if(button.CommandName == "Delete")
                {
                    button.Attributes["onclick"] = "if(!confirm('Bạn Muốn Xóa " + item + "!')){return false;} ;";
                }
            }
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        XayDung cartl = (XayDung)Session["Cart"];
        int index = Convert.ToInt32(e.RowIndex);
        DataTable t = ViewState["t"] as DataTable;
        t.Rows[index].Delete();
        ViewState["t"] = t;
        GridView1.DataSource = ViewState["t"] as DataTable;
        GridView1.DataBind();
        Label1.Text = cartl.TongThanhTien().ToString();
    }
}