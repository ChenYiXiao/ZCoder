//--------------------------------------------------------------------------------------
//
//FileName:         BigLogin.ascx.cs
//Depiction:        用于快捷登陆的面板
//Author:	            陈一枭
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
/// 快捷登录面板
/// </summary>
public partial class BigLogin : System.Web.UI.UserControl
{
    /// <summary>
    /// Page_Load
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
        /*检查是否已登陆*/
        if (UserOperation.CheckLoged(Session))
        {
            /*设置登陆面板不可见*/
            pnl_Login.Visible = false;
            /*读出用户名*/
            hlUserName.Text = Session["userName"].ToString();
            /*检查是否是管理员*/
            if (UserOperation.CheckIsAdmin(Session))
            {
                /*管理后台链接标签可视*/
                hlAdmin.Visible = true;
            }
            /*用户面板可见*/
            pnl_User.Visible = true;
            return;
        }
        else
        {  
            if( Session["loginerror"] ==null)
            {
               
            }
            else if ((bool.Parse(Session["loginerror"].ToString()) == true))
            {
                tb_tip.Visible = true;
            }
            /*登陆面板可见，用户面板不可见*/
            pnl_Login.Visible = true;
            pnl_User.Visible = false;
        }
    }
    /// <summary>
    /// 登录按钮
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btn_Login_Click(object sender, EventArgs e)
    {
        /*登陆*/
        UserOperation.Login(Session, tb_UserName.Text, tb_Password.Text);
        /*重新跳转*/
        Response.Redirect(Request.Url.AbsoluteUri);
    }
    protected void btn_Reg_Click(object sender, EventArgs e)
    {

    }
}