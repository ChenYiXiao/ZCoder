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

public partial class ascx_LatestComment : System.Web.UI.UserControl
{
    public override void DataBind()
    {
        lbPage.Text = page.ToString();
        DataBase db = new DataBase();
        DataSet ds = db.ExCommand("SELECT tb_comment.commentTitle, tb_comment.context, tb_comment.agree, tb_comment.disagree FROM tb_comment");
        DataOperate.dlBind(8, ds, lbPage, lbtpage, lbtnUp, lbtnnext, lbtnback, lbtnone, this.DataList1);
        base.DataBind();
    }
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
    protected void lbtnUp_Click(object sender, EventArgs e)
    {
        this.page--; DataBind();
    }
    protected void lbtnnext_Click(object sender, EventArgs e)
    {
        this.page++; DataBind();
    }
    protected void lbtnback_Click(object sender, EventArgs e)
    {
        this.page = int.Parse(this.lbtpage.Text); DataBind();
    }
    protected void lbtnone_Click(object sender, EventArgs e)
    {
        this.page = 1; DataBind();
    }
}

