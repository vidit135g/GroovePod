using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
using System.Drawing;

using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Index_signin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
   

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=VULCAN;Initial Catalog=Groovepod;Integrated Security=True");
        con.Open();
        string email = text1.Value.ToString();
        string password = text2.Value.ToString();
        SqlCommand cmd = new SqlCommand("select UserName,Email from Signup where email='" + email + "'and password='" + password + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Logged in Successfully')", true);
            Response.Redirect("home.html");
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Login failed')", true);
            Response.Redirect("404.html");
        }
        con.Close();
    }
}
