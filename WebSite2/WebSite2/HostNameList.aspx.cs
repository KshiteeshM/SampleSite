using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;


public partial class HostNameList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
       {
            string[] HostNames = ConfigurationManager.AppSettings["hostnames"].Split(';');
            foreach (string str in HostNames)
            {
                RadioButtonList1.Items.Add(str);
            }

        }
    }



    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        string url = "NumberErrors.aspx";
        url += "?";
        url += "Node=" + Server.UrlEncode(RadioButtonList1.SelectedValue);
        Response.Redirect(url);

    }
}