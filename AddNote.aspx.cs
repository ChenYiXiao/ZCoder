//--------------------------------------------------------------------------------------
//
//FileName:         AddNote.aspx.cs
//Depiction:        添加注释
//Author:	           肖骏涛
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
/// 前台添加注释
/// </summary>
public partial class AddNote : System.Web.UI.Page
{
    /// <summary>
    /// 
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
        DataBase db = new DataBase();
        NoteEntity ne = new NoteEntity();
        ne.Agree = 0;
        ne.Cid = int.Parse(Request.QueryString["cid"].ToString());
        ne.Disagree = 0;
        ne.EndLine = int.Parse(Request.QueryString["endline"].ToString());
        ne.NoteName = "";
        ne.StartLine = int.Parse(Request.QueryString["startline"].ToString());
        ne.Context = Request.QueryString["context"].ToString();
        ne.Uid = int.Parse(Session["uid"].ToString());
        ne.UpTime = DateTime.Now;
        if (ne.Context == "")
        {
            Response.Write("请填写注释！");
            return;
        }
        if (NoteOperation.AddNote(ne))
        {
            Response.Write("注释添加成功。");
            return;
        }
        else
        {
            Response.Write("添加注释失败");
        }


    }
}