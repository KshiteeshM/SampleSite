using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading.Tasks;
using System.ServiceProcess;
using System.IO;
using System.Management.Automation;
using System.Management.Automation.Runspaces;
using System.Collections.ObjectModel;
using System.Threading;


public partial class PageEffect : System.Web.UI.Page
{
    private ServiceController m_serviceController;
    private string m_timeInSeconds;
    private string m_serviceName;
    private const int intervalInSeconds = 10;

    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

   
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        m_serviceName = Request.QueryString["ServiceName"];
        m_timeInSeconds = Request.QueryString["Time"];
        m_serviceController = new ServiceController();
        m_serviceController.ServiceName = m_serviceName;
        if (ToBeLogged_Label.Visible && !Logging_Label.Visible)
        {

            m_serviceController.Stop();
            Thread.Sleep(int.Parse(m_timeInSeconds) * 1000);
            m_serviceController.Start();
            Timer1.Interval = intervalInSeconds * 1000;
            Logging_Label.Visible = true;
            ToBeLogged_Label.Visible = false;
        }
        else if (Logging_Label.Visible && !Logged_Label.Visible)
        {
            Logging_Label.Visible = false;
            Logged_Label.Visible = true;
            Button1.Visible = true;
            Timer1.Enabled = false;
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("HostNameList.aspx");
    }

}