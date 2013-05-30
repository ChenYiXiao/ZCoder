//--------------------------------------------------------------------------------------
//
//FileName:         UserList.aspx.cs
//Depiction:        用户列表
//Author:	          
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
/// 后台用户列表
/// </summary>
public partial class admin_UserList : System.Web.UI.Page
{
    /// <summary>
    /// Pagea_Load
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    /// <summary>
    /// 是否管理员
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void fixAdmin(object sender, EventArgs e)
    {
        Label lb=(Label)sender;
        if (lb.Text == "True")
        {
            lb.Text = "管理员";
        }
        else
        {
            lb.Text = "会员";
        }
    }
    /// <summary>
    /// 性别
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void fixSex(object sender, EventArgs e)
    {
        Label lb = (Label)sender;
        if (lb.Text == "True")
        {
            lb.Text = "男";
        }
        else
        {
            lb.Text = "女";
        }
    }
}