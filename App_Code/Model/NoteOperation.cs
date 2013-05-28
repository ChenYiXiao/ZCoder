//--------------------------------------------------------------------------------------
//
//FileName:         NoteOperation.cs
//Depiction:        注释的操作，包括注释的添加，注释的编辑，注释的删除。
//Author:	           肖骏涛
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
using System.Web.UI;

/// <summary>
///注释的操作
/// </summary>
public class NoteOperation
{

    public NoteOperation()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }
    /// <summary>
    /// 添加注释
    /// </summary>
    /// <param name="ne">注释的实例</param>
    /// <returns>添加成功返回true 失败返回false</returns>
    public static bool AddNote(NoteEntity ne)
    {
        DataBase db = new DataBase();
        try
        {
            string sql = string.Format("INSERT INTO tb_note ( noteName, uid, upTime, startLine, endLine, cid, agree, disagree,context )VALUES  ( '{0}', '{1}','{2}', {3}, {4},{5},{6},{7},'{8}')", ne.NoteName, ne.Uid, ne.UpTime.ToString(), ne.StartLine, ne.EndLine, ne.Cid, ne.Agree, ne.Disagree, ne.Context.Trim().Replace(" ", ""));
            db.ExCommandNoBack(sql);
            return true;
        }
        catch
        {
            return false;
        }
    }
/// <summary>
/// 修改注释信息
/// </summary>
/// <param name="NoteName">注释名</param>
/// <param name="ID">注释ID</param>
    public static void EditNote(string NoteName, int ID)
    {
        DataBase db = new DataBase();
        string sql = "UPDATE tb_project SET projectName ='" + NoteName + "'where id=" + ID.ToString();
        db.ExCommandNoBack(sql);
    }
    /// <summary>
    /// 删除注释
    /// </summary>
    /// <param name="id">注释ID</param>
    public static void DelNote(String noteId)
    {
        /*删除注释*/
        DataBase db = new DataBase();
        string sql = "delete from dbo.tb_note where id=" + noteId + "";
        db.ExCommandNoBack(sql);

    }
/// <summary>
/// 获取注释信息
/// </summary>
/// <param name="noteId">注释ID</param>
/// <returns>返回注释实例</returns>
    public static NoteEntity GetNote(int noteId)
    {
        DataBase db = new DataBase();
        DataSet rs = db.RunProcReturn("select * from tb_note where id=" + noteId, "tb_note");
        if (rs.Tables[0].Rows.Count > 0)
        {
            NoteEntity ne = new NoteEntity();
            ne.NoteName = rs.Tables[0].Rows[0]["noteName"].ToString();
            ne.Uid = int.Parse(rs.Tables[0].Rows[0]["uid"].ToString());
            ne.Cid = int.Parse(rs.Tables[0].Rows[0]["cid"].ToString());
            ne.UpTime = DateTime.Parse(rs.Tables[0].Rows[0]["upTime"].ToString());
            ne.Id = int.Parse(rs.Tables[0].Rows[0]["id"].ToString());
            ne.StartLine = int.Parse(rs.Tables[0].Rows[0]["startLine"].ToString());
            ne.EndLine = int.Parse(rs.Tables[0].Rows[0]["endLine"].ToString());
            ne.Agree = int.Parse(rs.Tables[0].Rows[0]["agree"].ToString());
            ne.Disagree = int.Parse(rs.Tables[0].Rows[0]["disagree"].ToString());
            ne.Context = rs.Tables[0].Rows[0]["Context"].ToString();
            return ne;
        }
        return null;
    }
    /// <summary>
    /// 利用起始行获取注释信息
    /// </summary>
    /// <param name="startline">注释的起始行</param>
    /// <param name="cid">注释所属源码ID</param>
    /// <returns>返回注释</returns>
    public static List<NoteEntity> GetNotesBySartLine(int startline, int cid)
    {
        DataBase db = new DataBase();
        DataSet rs = db.RunProcReturn("select * from tb_note where startline=" + startline.ToString() + " and cid=" + cid.ToString(), "tb_note");
        List<NoteEntity> notes = new List<NoteEntity>();
        for (int i = 0; i < rs.Tables[0].Rows.Count; i++)
        {
            NoteEntity ne = new NoteEntity();
            ne.NoteName = rs.Tables[0].Rows[i]["noteName"].ToString();
            ne.Uid = int.Parse(rs.Tables[0].Rows[i]["uid"].ToString());
            ne.Cid = int.Parse(rs.Tables[0].Rows[i]["cid"].ToString());
            ne.UpTime = DateTime.Parse(rs.Tables[0].Rows[i]["upTime"].ToString());
            ne.Id = int.Parse(rs.Tables[0].Rows[i]["id"].ToString());
            ne.StartLine = int.Parse(rs.Tables[0].Rows[i]["startLine"].ToString());
            ne.EndLine = int.Parse(rs.Tables[0].Rows[i]["endLine"].ToString());
            ne.Agree = int.Parse(rs.Tables[0].Rows[i]["agree"].ToString());
            ne.Disagree = int.Parse(rs.Tables[0].Rows[i]["disagree"].ToString());
            ne.Context = rs.Tables[0].Rows[i]["Context"].ToString();
            ne.User = UserOperation.GetUser(ne.Uid);
            ne.Recommend = int.Parse(rs.Tables[0].Rows[i]["recommend"].ToString());
            notes.Add(ne);
        }
        return notes;
    }
  public static void Recommend(int noteId)
    /// <summary>
    /// 注释是否被推荐
    /// </summary>
    /// <param name="i">注释的ID</param>
    public static void recommend(int i)
    {
        DataBase db = new DataBase();
        string sql = "update tb_note set recommend='" + 1 + "' where id='" + noteId + "'";
        db.ExCommandNoBack(sql);
    }
    /// <summary>
    /// 取消推荐操作
    /// </summary>
    /// <param name="i">注释的ID</param>
    /// <returns></returns>
    public static int CancelRecommend(int noteId)
    {
        DataBase db = new DataBase();
        string sql = "select recommend from tb_note where id='" + noteId + "'";
        string sql1 = "update tb_note set recommend='" + 0 + "' where id='" + noteId + "'";
        DataSet ds = db.RunProcReturn(sql, "tb_note");
        /*如果本就未被推荐，则返回0*/
        if (int.Parse(ds.Tables[0].Rows[0]["recommend"].ToString()) == 0)
        {
            return 0;
        }
        /*如果已被推荐，则返回1*/
        else
        {
            db.ExCommandNoBack(sql1);
            return 1;
        }
    }
}