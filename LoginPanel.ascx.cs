using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoginPanel : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
            if (Session["uid"] != null)
            {
                Label2.Text = "<a href='user.aspx'>" + Session["userName"] + "</a> <font color='#CCCCCC'>|</font>  <a href='logout.aspx?url="+Request.Url+"'>注销</a>";
                Panel1.Visible = false;
                Panel2.Visible = true;
            }
            else
            {
               
                Panel1.Visible = true;
                Panel2.Visible = false;
            }
        
    }
}