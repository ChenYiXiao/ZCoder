//--------------------------------------------------------------------------------------
//
//FileName:         EditProject.aspx.cs
//Depiction:        后台管理模块。用于后台修改评论。
//Author:	           陈斌
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

public partial class admin_EditComment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            CommentEntity ce = CommentOperation.GetComment(int.Parse(Request.QueryString["id"].ToString()));
            if (ce != null)
            {
                lb_id.Text = ce.Id.ToString();
                tb_ct.Text = ce.CommentTitle;
                tb_context.Text = ce.ConText;
                tb_agree.Text = ce.Agree.ToString();
                tb_disagree.Text = ce.DisAgree.ToString();
                lb_nid.Text = ce.nid.ToString();
                lb_uid.Text = ce.uid.ToString();
                lb_uptime.Text = ce.UpTime.ToString();
            }
        }
    }
    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("/admin/CommentList.aspx");
    }
    protected void btn_edit_Click(object sender, EventArgs e)
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        String ct = tb_ct.Text;
        String context = tb_context.Text;
        int agree = int.Parse(tb_agree.Text);
        int disagree = int.Parse(tb_disagree.Text);
        try
        {
            CommentOperation.EditComment(ct, context, agree, disagree, id);
            SmallScript.MessageBox(Page, "修改评论成功。");
            SmallScript.goRedirect(Response, Session, "跳转到评论列表 ", "admin/CommentList.aspx");
        }
        catch
        {
            SmallScript.MessageBox(Page, "修改失败！");
            return;
        }
    }
}