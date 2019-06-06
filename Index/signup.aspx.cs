using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Index_signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string username = Text1.Value.ToString();
        string email = Text2.Value.ToString();
        string pass = Text3.Value.ToString();
        SqlConnection conn = new SqlConnection("Data Source=VULCAN;Initial Catalog=Groovepod;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("insert into Signup(UserName,Email,Password) values(@username,@email,@pass)", conn);
        cmd.Parameters.AddWithValue("@username", username);
        cmd.Parameters.AddWithValue("@email", email);
        cmd.Parameters.AddWithValue("@pass", pass);
        conn.Open();
        cmd.ExecuteNonQuery();
        Response.Redirect("index.html");
        conn.Close();
    }
}