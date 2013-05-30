//--------------------------------------------------------------------------------------
//
//FileName:         DelComment.aspx.cs
//Depiction:        后台管理模块。用于后台删除评论。
//Author:	        陈斌 
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
using System.Data;
/// <summary>
/// 后台删除评论
/// </summary>
public partial class admin_DelComment : System.Web.UI.Page
{
    /// <summary>
    /// page load
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            CommentEntity ce = CommentOperation.GetComment(int.Parse(Request.QueryString["id"].ToString()));
            if (ce != null)
            {
                lb_id.Text = ce.Id.ToString();
                lb_ct.Text = ce.CommentTitle;
                lb_context.Text = ce.ConText;
                lb_agree.Text = ce.Agree.ToString();
                lb_disagree.Text = ce.DisAgree.ToString();
                lb_nid.Text = ce.nid.ToString();
                lb_uid.Text = ce.uid.ToString();
                lb_uptime.Text = ce.UpTime.ToString();
            }
        }
    }
    /// <summary>
    /// 取消删除
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btn_Cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/CommentList.aspx");
    }
    /// <summary>
    /// 确认删除
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btn_ok_Click(object sender, EventArgs e)
    {
        try
        {
            //调用CommentOperation类里的DelComment方法，通过传入id，进行删除操作
            CommentOperation.DelComment(Int32.Parse(Request.QueryString["id"]));
            SmallScript.goRedirect(Response, Session, "删除成功!", "admin/CommentList.aspx");
        }
        catch
        {
            //删除失败提示
            SmallScript.MessageBox(Page, "删除失败!");
        }
    }

}