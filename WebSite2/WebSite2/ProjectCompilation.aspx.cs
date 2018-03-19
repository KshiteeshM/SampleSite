using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProjectCompilation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            IList<Project> ProjectList = new List<Project>
            {
                new Project("ProjectMQ","slidgjaosdigjoisdhilsdfbhlsidbflsfbdibhf","~/Images/philips-new-logo-brand-3a6e21c0797fec97-128x128.png"),
            new Project("Lookup", "slidgjaosdigjoisdhilsdfbhlsidbflsfbdibhf", "~/Images/philips-new-logo-brand-3a6e21c0797fec97-128x128.png")
        };
            Projects_LV.DataSource = ProjectList;
            
        }
        this.DataBind();
    }

    protected void Projects_LV_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}