//--------------------------------------------------------------------------------------
//
//FileName:         DelUser.aspx
//Depiction:        后台管理模块。用于后台删除用户。
//Author:	         陈斌 
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
/// 后台删除用户
/// </summary>
public partial class admin_DelUser : System.Web.UI.Page
{
    /// <summary>
    /// Page_Load
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            UserEntity ue = UserOperation.GetUser(int.Parse(Request.QueryString["id"].ToString()));
            if (ue != null)
            {
                //在表单中显示数据
                lb_UserName.Text = ue.UserName;
                lb_Id.Text = ue.Id.ToString();
                lb_Email.Text = ue.Email;
                lb_Sex.Text = ue.Sex ? "男" : "女";
                lb_IsAdmin.Text = ue.Isadmin ? "管理员" : "用户";
            }
        }
    }
    /// <summary>
    /// 取消删除按钮
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/userlist.aspx");
    }
    /// <summary>
    /// 确认删除按钮
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            //调用UserOperation类里的DelUser方法，通过传入id，进行删除操作
            UserOperation.DelUser(Request.QueryString["id"].ToString());
            SmallScript.goRedirect(Response, Session, "删除成功!", "~/admin/userlist.aspx");
        }
        catch
        {
            //删除失败提示
            SmallScript.MessageBox(Page, "删除失败!");
        }
    }
}