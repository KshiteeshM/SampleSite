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
using System.Xml;
using System.IO;


public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //ArrayList data = new ArrayList();
        //string hostname = Request.QueryString["hostname"];
        //SqlConnection con = new SqlConnection();
        ////con.ConnectionString = "Data Source=" + hostname + ";Initial Catalog=StentorNotification;Integrated Security=True";
        //con.ConnectionString = "Data Source=YY111426;Initial Catalog=StentorNotification;Integrated Security=True";
        //con.Open();
        //SqlCommand command = new SqlCommand("Select  [Message] from [OutputNotificationMessages] where [Component]=@Component", con);
        //command.Parameters.AddWithValue("@Component",Request.QueryString["Component"]);
        //SqlDataReader reader;
        //reader = command.ExecuteReader();
        //int c = 0;
        //while (reader.Read())
        //{
        //    data.Add(reader["Message"].ToString());
            
        //}
        //con.Close();
      
        //DataTable dt = new DataTable();

        //dt.Columns.Add("Message Body");

        

        //int i = 0;
        //foreach (String str in data)
        //{
        //    /* XmlDocument xmltest = new XmlDocument();
        //     xmltest.LoadXml(obj.ToString());

        //     XmlNodeList elemlist = xmltest.GetElementsByTagName("MESSAGE_BODY");

        //     string result = elemlist[0].InnerXml;*/

        //    XmlDocument doc = new XmlDocument();

        //    doc.LoadXml(str);

        //    XmlNode node = doc.DocumentElement.SelectSingleNode("/MESSAGE_ROOT/BODY/REPORT/LOGMESSAGE/MESSAGE_BODY");
        //    dt.Rows.Add();
        //    dt.Rows[i]["Message Body"] = node.InnerText;
        //    i++;
        //}
        //GridView1.DataSource = dt;
        //GridView1.DataBind();
        
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("HostNameList.aspx");
    }
}