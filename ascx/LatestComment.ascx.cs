//--------------------------------------------------------------------------------------
//
//FileName:         LatestComment.ascx.cs
//Depiction:        最新评论列表
//Author:	        肖骏涛    
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
/// 最新评论列表
/// </summary>
public partial class ascx_LatestComment : System.Web.UI.UserControl
{
    /// <summary>
    /// 获取数据库中comment的内容
    /// </summary>
    public override void DataBind()
    {
        lbPage.Text = page.ToString();
        DataBase db = new DataBase();
        DataSet ds = db.ExCommand("SELECT  tb_comment.context AS c_context, tb_comment.agree, tb_comment.disagree, tb_user.userName, tb_comment.id, tb_comment.uptime, tb_note.context AS n_context , tb_comment.nid , tb_note.cid,tb_note.startLine FROM  tb_note INNER JOIN tb_comment ON tb_note.id = tb_comment.nid INNER JOIN tb_user ON tb_comment.uid = tb_user.id");
        DataOperate.dlBind(8, ds, lbPage, lbtpage, lbtnUp, lbtnnext, lbtnback, lbtnone, this.DataList1);
        base.DataBind();
    }
    /// <summary>
    /// 
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session["page"] = 1;
            DataBind();
        }
        
    }
    int page
    {
        get
        {
            int p = Session["page"] != null ? int.Parse(Session["page"].ToString()) : 1;
            return p;
        }
        set
        {
            Session["page"] = value;
        }
    }
    /// <summary>
    /// 上一页
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void lbtnUp_Click(object sender, EventArgs e)
    {
        this.page--; DataBind();
    }
    /// <summary>
    /// 下一页
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void lbtnnext_Click(object sender, EventArgs e)
    {
        this.page++; DataBind();
    }
    /// <summary>
    /// 最后一页
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void lbtnback_Click(object sender, EventArgs e)
    {
        this.page = int.Parse(this.lbtpage.Text); DataBind();
    }
    /// <summary>
    /// 第一页
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void lbtnone_Click(object sender, EventArgs e)
    {
        this.page = 1; DataBind();
    }
}

