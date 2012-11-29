/***************************************************************************************************
 *            
 *
 *\File          CommentOperation
 *\Description   评论的操作，包括评论的添加，评论的编辑，评论的删除。
 *\Log           2012.11.2    Ver 1.0    
 *               创建文件。
 ***************************************************************************************************/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
///CommentOperation 的摘要说明
/// </summary>
public class CommentOperation
{
	public CommentOperation()
	{
	
	}
    public static void EditComment(String commenttitle, String context, int agree, int disagree,int id) {
        DataBase db = new DataBase();
        String sql = "update tb_comment set commenttitle='" + commenttitle + "',context='" + context + "',agree='" + agree + "',disagree='" + disagree + "' where id=" +id;
        db.ExCommandNoBack(sql);
    }
    public static void DelComment(int id) {
        DataBase db = new DataBase();
        String sql = "delete from dbo.tb_comment where id=" + id + "";
        db.ExCommandNoBack(sql);
    }
    public static CommentEntity GetComment(int commentId)
    {
        /*获取评论信息*/
        DataBase db = new DataBase();
        DataSet rs = db.RunProcReturn("select * from tb_comment where id=" + commentId, "tb_comment");
        if (rs.Tables[0].Rows.Count > 0)
        {
            CommentEntity ce = new CommentEntity();
            ce.Id = int.Parse(rs.Tables[0].Rows[0]["id"].ToString());
            ce.CommetTitle = rs.Tables[0].Rows[0]["commenttitle"].ToString();
            ce.ConText = rs.Tables[0].Rows[0]["context"].ToString();
            ce.Agree = int.Parse(rs.Tables[0].Rows[0]["agree"].ToString());
            ce.DisAgree = int.Parse(rs.Tables[0].Rows[0]["disagree"].ToString());
            ce.uid = int.Parse(rs.Tables[0].Rows[0]["uid"].ToString());
            ce.nid = int.Parse(rs.Tables[0].Rows[0]["nid"].ToString());
            ce.UpTime = DateTime.Parse(rs.Tables[0].Rows[0]["uptime"].ToString());
            
            return ce;
        }
        return null;
    }
    
}