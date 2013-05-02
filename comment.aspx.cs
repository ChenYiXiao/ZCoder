/***************************************************************************************************
 *
 *\File          comment.aspx.cs
 *\Description   评论页面
 *\Log           2013.5.2    Ver 1.0    肖骏涛
 *               创建文件。
 ***************************************************************************************************/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;

public partial class comment : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
        {
            Response.Write("请登录后再填写注释。");
            return;
        }
        DataBase db = new DataBase();
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        CommentEntity ce = new CommentEntity();
        ce.Agree = 0;
        ce.nid = int.Parse(Request.QueryString["nid"].ToString());
        ce.DisAgree = 0;
        ce.CommentTitle = "";
        ce.ConText = tb_comment.Text.ToString();
        ce.uid = int.Parse(Session["uid"].ToString());
        ce.UpTime = DateTime.Now;
        if (ce.ConText == "")
        {
            Response.Write("请填写评论内容！");
            return;
        }
        if (CommentOperation.AddComment(ce))
        {
            Response.Write("评论添加成功。");
            return;
        }
        else
        {
            Response.Write("添加评论失败");
        }


    }
    protected void clear_Click(object sender, EventArgs e)
    {
        tb_comment.Text="";
    }
}