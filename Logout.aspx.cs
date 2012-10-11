using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["uid"] = null;
        Session["username"] = null;
        Session["password"] = null;
        SmallScript.goRedirect(Response, Session, "退出登陆成功。", Request["url"].ToString());
    }
}