using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Collections;


public partial class NumberErrors : System.Web.UI.Page
{
    ArrayList data = new ArrayList();
    protected void Page_Load(object sender, EventArgs e)
    {
        string hostname = Request.QueryString["Node"];
        
        string query1 = "Select distinct [component] from [OutputNotificationMessages]";
        SqlConnection con = new SqlConnection();
        //con.ConnectionString = "Data Source=" + hostname + ";Initial Catalog=StentorNotification;Integrated Security=True";
        con.ConnectionString = "Data Source=YY111426;Initial Catalog=StentorNotification;Integrated Security=True";
        con.Open();
        SqlCommand command = new SqlCommand(query1, con);
        SqlDataReader reader;
        reader = command.ExecuteReader();
        while (reader.Read())
        {
            data.Add(reader["Component"].ToString());
        }
        con.Close();

        foreach (string str in data)
        {
            SqlConnection con2 = new SqlConnection();
            //con2.ConnectionString = "Data Source=" + hostname + ";Initial Catalog=StentorNotification;Integrated Security=True";
            con2.ConnectionString = "Data Source=YY111426;Initial Catalog=StentorNotification;Integrated Security=True";
            con2.Open();
            SqlCommand command2 = new SqlCommand("SELECT COUNT(*) Message from [OutputNotificationMessages] where Component = @Component", con2);
            command2.Parameters.AddWithValue("@Component", str);
            int n = Convert.ToInt32(command2.ExecuteScalar());
            con.Close();
            string str1 = "The number of LM_Criticals logged by " + str + " is " + n.ToString();
            RadioButtonList1.Items.Add(str1);

        }
        

    }

       protected void Button1_Click(object sender, EventArgs e)
    {
        int n = RadioButtonList1.SelectedIndex;
        string Component= data[n].ToString();
        Response.Redirect("Details.aspx"+"?Component="+Component+"&"+"hostname="+Request.QueryString["Node"]);
    }

}