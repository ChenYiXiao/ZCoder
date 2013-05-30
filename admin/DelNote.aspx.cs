//--------------------------------------------------------------------------------------
//
//FileName:         DelNote.aspx
//Depiction:        后台管理模块。用于后台删除评论。
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
/// 后台删除评论
/// </summary>
public partial class admin_DelNote : System.Web.UI.Page
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
            int id = int.Parse(Request.QueryString["id"].ToString());
            NoteEntity ne = NoteOperation.GetNote(int.Parse(Request.QueryString["id"].ToString()));
            
            if (ne != null)
            {
                DataBase db = new DataBase();
                DataSet sql = db.ExCommand(string.Format("SELECT tb_note.id, tb_note.noteName, tb_note.upTime, tb_note.cid, tb_note.uid, tb_user.userName, tb_code.path FROM  tb_user INNER JOIN tb_note ON tb_user.id = tb_note.uid INNER JOIN tb_code ON tb_note.cid = tb_code.id  WHERE (tb_note.id ={0} ) ", id));
                string User = sql.Tables[0].Rows[0]["userName"].ToString();
                string Path = sql.Tables[0].Rows[0]["path"].ToString();
                //在表单中显示数据
                lb_NoteName.Text = ne.NoteName;
                lb_Id.Text = ne.Id.ToString();
                lb_Path.Text = Path;
                lb_User.Text = User;
                lb_UpTime.Text = ne.UpTime.ToString();
                
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
        Response.Redirect("~/admin/Notelist.aspx");
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
            //调用NoteOperation类里的DelNote方法，通过传入id，进行删除操作
            NoteOperation.DelNote(Request.QueryString["id"].ToString());
            SmallScript.goRedirect(Response, Session, "删除成功!", "~/admin/Notelist.aspx");
        }
        catch
        {
            //删除失败提示
            SmallScript.MessageBox(Page, "删除失败!");
        }
    }
}