//--------------------------------------------------------------------------------------
//
//FileName:         comment.aspx.cs
//Depiction:        评论页面
//Author:	            肖骏涛
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
using System.Configuration;
using System.Data;
/// <summary>
/// 评论页面
/// </summary>
public partial class comment : System.Web.UI.Page
{
    /// <summary>
    /// Page_Load
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
        {
            Response.Write("请登录后再填写注释。");
            return;
        }
       
    }
    /// <summary>
    /// 添加评论确定按钮
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void submit_Click(object sender, EventArgs e)
    {
        DataBase db = new DataBase();
        CommentEntity ce = new CommentEntity();
        ce.Agree = 0;
        ce.nid = int.Parse(Request.QueryString["nid"].ToString());
        ce.DisAgree = 0;
        ce.CommentTitle = "";
        ce.ConText = tb_comment.Text;
        ce.uid = int.Parse(Session["uid"].ToString());
        ce.UpTime = DateTime.Now;
        if (ce.ConText == "")
        {
            Response.Write("请填写评论内容！");
            return;
        }
        if (CommentOperation.AddComment(ce))
        {
            Response.Redirect("LoadComment.aspx?nid=" + ce.nid );  
            return;
        }
        else
        {
            Response.Write("添加评论失败");
        }


    }
    /// <summary>
    /// 清楚按钮
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void clear_Click(object sender, EventArgs e)
    {
        tb_comment.Text="";
    }
}