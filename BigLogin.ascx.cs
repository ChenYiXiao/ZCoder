using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BigLogin : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (UserOperation.CheckLoged(Session))
        {

            Panel1.Visible = false;
            hlUserName.Text = Session["userName"].ToString();
            Panel2.Visible = true;
            return;
        }
        else
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        UserOperation.Login(Session, tbUserName.Text, tbPassword.Text);
        Response.Redirect(Request.Url.AbsoluteUri);
    }
}