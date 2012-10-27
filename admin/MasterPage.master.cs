using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (UserOperation.CheckLoged(Session) == false)
        {
            SmallScript.goRedirect(Response, Session, "请先登陆。", "~/login.aspx");
            return;
        }
        if (UserOperation.CheckIsAdmin(Session) == false )
        {
            SmallScript.goRedirect(Response, Session, "对不起，您并不具备使用后台的权限。", "~/default.aspx");
        }
    }
}
