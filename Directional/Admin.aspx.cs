using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class Directional_Admin : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["QLBB"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
            ShowData();
    }

    protected void ShowData()
    {
         if (!IsPostBack)
                {
                cn.Open();
                SqlDataAdapter da = new SqlDataAdapter("select MaSach, TenSach, SL, GiaBan from CTSACH where TinhTrang = 1", cn);
                DataSet d = new DataSet();
                da.Fill(d, "Admin");
                GridView1.DataSource = d.Tables["Admin"];
                GridView1.DataBind();
                cn.Close();
                }
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        cn.Open();
        string maS = GridView1.Rows[e.RowIndex].Cells[0].Text;
        string str = "update CTSACH set TinhTrang = 0 where MaSach = '" + maS + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = str;
        cmd.ExecuteNonQuery();
        GridView1.EditIndex = -1;
        ShowData();
    }
    protected void GridView1_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
    {
            GridView1.EditIndex = e.NewEditIndex;
            ShowData();
    }



    protected void GridView1_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
    {
        Label id = GridView1.Rows[e.RowIndex].FindControl("lbl_ID") as Label;
        TextBox SL = GridView1.Rows[e.RowIndex].FindControl("txt_SL") as TextBox;
        TextBox GB = GridView1.Rows[e.RowIndex].FindControl("txt_GB") as TextBox;
        cn.Open();
        SqlCommand cmd = new SqlCommand("Update CTSACH Set SL = '" + SL.Text + "', GiaBan = '" + GB.Text + "' where MaSach='" + id.Text + "'", cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.EditIndex = -1;
        ShowData();
    }
    protected void GridView1_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        ShowData();
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        string ma = TextBox1.Text;
        string ten = TextBox2.Text;
        string tacgia = TextBox8.Text;
        string theloai = TextBox3.Text;
        string hinh = FileUpload1.FileName;
        int gia = int.Parse(TextBox4.Text);
        int sl = int.Parse(TextBox5.Text);
        string nd = TextBox6.Text;
        int trangthai = int.Parse(TextBox7.Text);
        string insertsach = "insert into SACH values('"+ma+"','"+hinh+"', N'"+ten+"');";
        string insertctsach = "insert into CTSACH values('" + ma + "', N'" + ten + "', N'" + tacgia + "', N'" + theloai + "', N'" + hinh + "', " + gia + ", " + sl + ", N'" + nd + "'," + trangthai + ");";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = insertsach;
        cmd.ExecuteNonQuery();
        SqlCommand cmd1 = new SqlCommand();
        cmd1.Connection = cn;
        cmd1.CommandText = insertctsach;
        cmd1.ExecuteNonQuery();
        ShowData();
    }
}