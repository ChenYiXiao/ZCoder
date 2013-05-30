//--------------------------------------------------------------------------------------
//
//FileName:         Login.aspx.cs
//Depiction:        用户登录
//Author:	         肖骏涛     
//CDT:	            2012-12-13
//Version:	        Ver 1.0    
//                  创建文件。
//--------------------------------------------------------------------------------------
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
/// <summary>
/// 用户登录
/// </summary>
public partial class Login : System.Web.UI.Page
{
    /// <summary>
    /// Page_Load
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    /// <summary>
    /// 登录按钮
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Log_Click(object sender, EventArgs e)
    {
        /* 对用户名密码和数据库中的用户名密码进行对比验证*/
        if (UserOperation.Login(Session, tb_UserName.Text, tb_Password.Text))            
        {
            /* 登录成功，跳转到登录成功界面 */
            SmallScript.goRedirect(Response, Session, "登陆成功！", "default.aspx");     
        }
        else
        {
            /*登录失败，跳转到登录界面*/
            SmallScript.goRedirect(Response, Session, "用户名或密码错误。", "login.aspx");  
        }
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }
}