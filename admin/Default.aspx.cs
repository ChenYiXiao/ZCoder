using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
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
        if (UserOperation.CheckIsAdmin(Session) == false)
        {
            /*不具权限*/
            SmallScript.goRedirect(Response, Session, "对不起，您并不具备使用后台的权限。", "~/default.aspx");
        }
    }
}
public class Message
{
    string url = "";

    public string Url
    {
        get { return url; }
        set { url = value; }
    }
    string title = "";

    public string Title
    {
        get { return title; }
        set { title = value; }
    }
    string content = "";

    public string Content
    {
        get { return content; }
        set { content = value; }
    }
}
public class Section
{
    string title = "";

    public string Title
    {
        get { return title; }
        set { title = value; }
    }
    string url = "";

    public string Url
    {
        get { return url; }
        set { url = value; }
    }

}