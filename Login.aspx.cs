using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (UserOperation.Login(Session, tb_UserName.Text, tb_Password.Text))
        {
            SmallScript.goRedirect(Response, Session, "登陆成功！", "default.aspx");
        }
        else
        {
            SmallScript.goRedirect(Response, Session, "用户名或密码错误。", "login.aspx");
        }
    }
}