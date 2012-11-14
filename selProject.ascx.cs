using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_selProject : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void sel_pro_Click1(object sender, EventArgs e)
    {
        string message = select_project.Text;
        Response.Redirect("Project_List.aspx?projectName=" + message);
    }
}