//--------------------------------------------------------------------------------------
//
//FileName:         CodeOperation.cs
//Depiction:        
//Author:	           
//CDT:	            2012-12-13
//Version:	        Ver 1.0    
//                  创建文件。
//--------------------------------------------------------------------------------------
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
///源代码的操作
/// </summary>
public class CodeOperation
{
    public CodeOperation()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }
    /// <summary>
    /// 获取源代码信息
    /// </summary>
    /// <param name="id">源码ID</param>
    /// <returns>返回源码的实例</returns>
    public static CodeEntity GetCode(int id)
    {
        DataBase db = new DataBase();
        DataSet ds = db.ExCommand("select * from tb_code where id=" + id.ToString());
        CodeEntity ce = new CodeEntity();
        try
        {
            ce.Id = (int)ds.Tables[0].Rows[0]["id"];
            ce.Pid = int.Parse(ds.Tables[0].Rows[0]["pid"].ToString());
            ce.UpTime = DateTime.Parse(ds.Tables[0].Rows[0]["uptime"].ToString());
            ce.Uid = int.Parse(ds.Tables[0].Rows[0]["uid"].ToString());
            ce.Lid = int.Parse(ds.Tables[0].Rows[0]["lid"].ToString());
            ce.Path = ds.Tables[0].Rows[0]["path"].ToString();
            return ce;
        }
        catch
        {
            return null;
        }
    }
    /// <summary>
    /// 利用源代码路径获取源代码信息
    /// </summary>
    /// <param name="path">源码路径</param>
    /// <returns>返回源码的实例</returns>
    public static CodeEntity GetCodeFromPath(string path)
    {
        DataBase db = new DataBase();
        DataSet ds = db.ExCommand("select * from tb_code where path='" + path.ToString() + "'");
        CodeEntity ce = new CodeEntity();
        try
        {
            ce.Id = (int)ds.Tables[0].Rows[0]["id"];
            ce.Pid = int.Parse(ds.Tables[0].Rows[0]["pid"].ToString());
            ce.UpTime = DateTime.Parse(ds.Tables[0].Rows[0]["uptime"].ToString());
            ce.Uid = int.Parse(ds.Tables[0].Rows[0]["uid"].ToString());
            ce.Lid = int.Parse(ds.Tables[0].Rows[0]["lid"].ToString());
            ce.Path = ds.Tables[0].Rows[0]["path"].ToString();
            return ce;
        }
        catch
        {
            return null;
        }
    }
    /// <summary>
    /// 用源代码ID获取注释信息
    /// </summary>
    /// <param name="cid">源码ID</param>
    /// <returns>返回注释列表</returns>
    public static List<NoteEntity> GetAssNotes(int cid)
    {
        DataBase db = new DataBase();
        DataSet ds = db.ExCommand("select * from tb_note where cid =" + cid);
        List<NoteEntity> assNotes = new List<NoteEntity>();
        foreach (DataRow dr in ds.Tables[0].Rows)
        {
            NoteEntity ne = new NoteEntity();
            ne.Agree = int.Parse(dr["agree"].ToString());
            ne.Cid = int.Parse(dr["cid"].ToString());
            ne.Context = dr["context"].ToString();
            ne.Disagree = int.Parse(dr["disagree"].ToString());
            ne.EndLine = int.Parse(dr["endline"].ToString());
            ne.Id = int.Parse(dr["id"].ToString());
            ne.NoteName = dr["noteName"].ToString();
            ne.StartLine = int.Parse(dr["startline"].ToString());
            ne.Uid = int.Parse(dr["uid"].ToString());
            ne.UpTime = DateTime.Parse(dr["uptime"].ToString());
            assNotes.Add(ne);
        }
        return assNotes;
    }
}