using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace student_Info_CRUD
{
    public partial class _Default : Page
    {

        SqlConnection con = new SqlConnection("Data Source=DESKTOP-3D27ML2\\SQLEXPRESS;Initial Catalog=studentDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into StudentInfo_Tab values('" + int.Parse(TextBox1.Text) + "','" + TextBox2.Text + "','" + DropDownList1.SelectedValue + "','" + double.Parse(TextBox3.Text) + "','" + TextBox4.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted');", true);
            LoadRecord();
        }

        void LoadRecord()
        {
            SqlCommand cmd = new SqlCommand("select * from StudentInfo_Tab", con);
            SqlDataAdapter d = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update StudentInfo_Tab set StudentName = '"+TextBox2.Text+ "', Addresss = '"+DropDownList1.SelectedValue+ "',Age = '"+float.Parse(TextBox3.Text)+ "',Contact = '"+TextBox4.Text+ "' where StudentID = '"+int.Parse(TextBox1.Text)+"'", con);            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated..');", true);

            LoadRecord();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from StudentInfo_Tab where StudentID = '" + int.Parse(TextBox1.Text) + "'", con); 
            cmd.ExecuteNonQuery();
            con.Close();
            LoadRecord();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from StudentInfo_Tab where StudentID = '" + int.Parse(TextBox1.Text) + "'", con);
            SqlDataAdapter d = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("select * from StudentInfo_Tab where StudentID = '" + int.Parse(TextBox1.Text) + "'",con);
                    SqlDataReader r = cmd.ExecuteReader();

                    while (r.Read())
                    {
                        TextBox2.Text = r.GetValue(1).ToString();
                        DropDownList1.SelectedValue = r.GetValue(2).ToString();
                        TextBox3.Text = r.GetValue(3).ToString();
                        TextBox4.Text = r.GetValue(4).ToString();
                    }
        }
    }
}