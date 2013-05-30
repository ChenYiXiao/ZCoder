//--------------------------------------------------------------------------------------
//
//FileName:         LatestNote.ascx.cs
//Depiction:        最新注释列表
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
/// 最新注释列表
/// </summary>
public partial class ascx_LatestNote : System.Web.UI.UserControl
{
   /// <summary>
   /// 获取数据库中note的内容
   /// </summary>
    public override void DataBind()
    {
        /*实例化数据库*/
        lbPage.Text = page.ToString();
        DataBase db = new DataBase();
        /*查询语句*/
        DataSet ds = db.ExCommand("SELECT  tb_note.id, tb_note.uid, tb_note.cid, tb_code.pid, tb_note.upTime, tb_note.context, tb_note.startLine, tb_note.endLine, tb_note.agree, tb_note.disagree, tb_code.path, tb_project.projectName, tb_user.userName FROM tb_code INNER JOIN tb_note ON tb_code.id = tb_note.cid INNER JOIN tb_user ON tb_note.uid = tb_user.id INNER JOIN tb_project ON tb_code.pid = tb_project.id ORDER BY tb_note.upTime DESC");
        DataOperate.dlBind(6, ds, lbPage, lbtpage, lbtnUp, lbtnnext, lbtnback, lbtnone, this.DataList1);
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
        /*跳转上一页*/
        this.page--; DataBind();
    }
    /// <summary>
    /// 下一页
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void lbtnnext_Click(object sender, EventArgs e)
    {
        /*跳转下一页*/
        this.page++; DataBind();
    }
    /// <summary>
    /// 最后一页
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void lbtnback_Click(object sender, EventArgs e)
    {
        /*跳转最后一页*/
        this.page = int.Parse(this.lbtpage.Text); DataBind();
    }
    /// <summary>
    /// 第一页
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void lbtnone_Click(object sender, EventArgs e)
    {
        /*跳转第一页*/
        this.page = 1; DataBind();
    }
}

