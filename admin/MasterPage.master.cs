/***************************************************************************************************
 *
 *\File          MasterPage.master.cs
 *\Description   后台母版页
 *\Log           2012.11.5    Ver 1.0    陈一枭
 *               创建文件。
 ***************************************************************************************************/
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
        /*检查是否已登陆*/
        if (UserOperation.CheckLoged(Session) == false)
        {
            /*未登录*/
            SmallScript.goRedirect(Response, Session, "请先登陆。", "~/login.aspx");
            return;
        }
        /*检查权限*/
        if (UserOperation.CheckIsAdmin(Session) == false )
        {
            /*不具权限*/
            SmallScript.goRedirect(Response, Session, "对不起，您并不具备使用后台的权限。", "~/default.aspx");
        }
    }
}
