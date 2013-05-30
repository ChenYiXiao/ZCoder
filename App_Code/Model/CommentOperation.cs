//--------------------------------------------------------------------------------------
//
//FileName:         CommentOperation
//Depiction:        评论的操作，包括评论的添加，评论的编辑，评论的删除。
//Author:	           
//CDT:	            2012-12-13
//Version:	        Ver 1.0    
//                  创建文件。
//--------------------------------------------------------------------------------------
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
///评论的操作。
/// </summary>
public class CommentOperation
{
    /// <summary>
    /// 
    /// </summary>
	public CommentOperation()
	{
	
	}
    /// <summary>
    /// 添加评论
    /// </summary>
    /// <param name="ce">评论的实例</param>
    /// <returns>添加成功返回true，添加失败返回 false</returns>
    public static bool AddComment(CommentEntity ce)
    {
       
        DataBase db = new DataBase();
        try
        {
            string sql = string.Format("INSERT INTO tb_comment ( commentTitle, context, agree, disagree, uid, nid, uptime)VALUES  ( '{0}', '{1}','{2}', '{3}', '{4}','{5}','{6}')", ce.CommentTitle, ce.ConText, ce.Agree, ce.DisAgree, ce.uid, ce.nid, ce.UpTime);
            db.ExCommandNoBack(sql);
            return true;
        }
        catch
        {
            return false;
        }
    }
    /// <summary>
    /// 评论的修改
    /// </summary>
    /// <param name="commenttitle">评论的标题</param>
    /// <param name="context">评论的内容</param>
    /// <param name="agree">赞成数</param>
    /// <param name="disagree">反对数</param>
    /// <param name="id">评论的ID</param>
    public static void EditComment(String commenttitle, String context, int agree, int disagree,int id) {
        DataBase db = new DataBase();
        String sql = "update tb_comment set commenttitle='" + commenttitle + "',context='" + context + "',agree='" + agree + "',disagree='" + disagree + "' where id=" +id;
        db.ExCommandNoBack(sql);
    }
    /// <summary>
    /// 删除评论
    /// </summary>
    /// <param name="id">评论的ID</param>
    public static void DelComment(int id) {
        DataBase db = new DataBase();
        String sql = "delete from dbo.tb_comment where id=" + id + "";
        db.ExCommandNoBack(sql);
    }
    /// <summary>
    /// 获取评论信息
    /// </summary>
    /// <param name="commentId">评论Id</param>
    /// <returns>返回评论的实例</returns>
    public static CommentEntity GetComment(int commentId)
    {
        /*获取评论信息*/
        DataBase db = new DataBase();
        DataSet rs = db.RunProcReturn("select * from tb_comment where id=" + commentId, "tb_comment");
        if (rs.Tables[0].Rows.Count > 0)
        {
            CommentEntity ce = new CommentEntity();
            ce.Id = int.Parse(rs.Tables[0].Rows[0]["id"].ToString());
            ce.CommentTitle = rs.Tables[0].Rows[0]["commenttitle"].ToString();
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
    /// <summary>
    /// 利用Nid获取评论信息
    /// </summary>
    /// <param name="nid"></param>
    /// <returns></returns>
    public static List<CommentEntity> GetCommentsByNid(int nid)
    {
        DataBase db = new DataBase();
        DataSet rs = db.RunProcReturn("select * from tb_comment where nid=" + nid.ToString(), "tb_comment");
        List<CommentEntity> comments = new List<CommentEntity>();
        for (int i = 0; i < rs.Tables[0].Rows.Count; i++)
        {
            CommentEntity ce = new CommentEntity();
            ce.CommentTitle = rs.Tables[0].Rows[i]["commentTitle"].ToString();
            ce.UpTime = DateTime.Parse(rs.Tables[0].Rows[i]["upTime"].ToString());
            ce.Id = int.Parse(rs.Tables[0].Rows[i]["id"].ToString());
            ce.Agree = int.Parse(rs.Tables[0].Rows[i]["agree"].ToString());
            ce.DisAgree = int.Parse(rs.Tables[0].Rows[i]["disagree"].ToString());
            ce.ConText = rs.Tables[0].Rows[i]["Context"].ToString();
            ce.uid = int.Parse(rs.Tables[0].Rows[i]["uid"].ToString());
            ce.User = UserOperation.GetUser(ce.uid);
            comments.Add(ce);
        }
        return comments;
    }

}