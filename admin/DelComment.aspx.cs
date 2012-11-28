/***************************************************************************************************
*
*\File          DelComment.aspx
*\Description   后台管理模块。用于后台删除评论。
*\Log           2012.11.28    Ver 1.0    肖骏涛
*               创建文件。
***************************************************************************************************/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admin_DelComment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack){
        int id = int.Parse(Request.QueryString["id"].ToString());
        CommentEntity ce=CommentOperation.GetComment(id);
            if(ce!=null){
            lb_id.Text=ce.id.ToString();
            lb_ct.Text=ce.CommetTitle;
            lb_context.Text=ce.ConText;
            lb_agree.Text=ce.Agree.ToString();
            lb_disagree.Text=ce.DisAgree.ToString();
            lb_nid.Text=ce.nid.ToString();
            lb_uid.Text=ce.uid.ToString();
            lb_uptime.Text=ce.UpTime.ToString();
            }
        }
    }
    protected void btn_Cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/CommentList.aspx");
    }
    protected void btn_ok_Click(object sender, EventArgs e)
    {
           try
        {
            //调用CommentOperation类里的DelComment方法，通过传入id，进行删除操作
            CommentOperation.DelComment(Int32.Parse(Request.QueryString["id"]));
            SmallScript.goRedirect(Response, Session, "删除成功!", "~/admin/CommentList.aspx");
        }
        catch
        {
            //删除失败提示
            SmallScript.MessageBox(Page, "删除失败!");
        }
    }

    }