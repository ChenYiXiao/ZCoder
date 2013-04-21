/***************************************************************************************************
 *
 *\File          AddNote.aspx.cs
 *\Description   添加注释 
 *\Log           2012.10.5    Ver 1.0    肖骏涛
 *               创建文件。
 ***************************************************************************************************/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddNote : System.Web.UI.Page
{
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