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
    protected void Log_Click(object sender, EventArgs e)
    {
        if (UserOperation.Login(Session, tb_UserName.Text, tb_Password.Text))  /* 对用户名密码和数据库中的用户名密码进行对比验证*/
        {
            SmallScript.goRedirect(Response, Session, "登陆成功！", "default.aspx");/* 登录成功，跳转到登录成功界面 */
        }
        else
        {
            SmallScript.goRedirect(Response, Session, "用户名或密码错误。", "login.aspx");  /*登录失败，跳转到登录界面*/
        }
    }
}