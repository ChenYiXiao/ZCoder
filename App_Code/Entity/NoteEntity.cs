//--------------------------------------------------------------------------------------
//
//FileName:         NoteEntity.cs
//Depiction:        
//Author:	        肖骏涛
//CDT:	            2012-12-13
//Version:	        Ver 1.0    
//                  创建文件。
//--------------------------------------------------------------------------------------
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
///注释的实体，用于存储和获取注释的信息
/// </summary>
public class NoteEntity
{

    int id = -1;
    /// <summary>
    /// 注释的ID （Id）
    /// </summary>
    public int Id
    {
        get { return id; }
        set { id = value; }
    }

    string noteName = "";
    /// <summary>
    /// 注释的名字 （NoteName）
    /// </summary>
    public string NoteName
    {
        get { return noteName; }
        set { noteName = value; }
    }

    int uid = -1;
    /// <summary>
    /// 注释者的ID （Uid）
    /// </summary>
    public int Uid
    {
        get { return uid; }
        set { uid = value; }
    }

    int startLine = -1;
    /// <summary>
    /// 注释的起始行 （StateLine）
    /// </summary>
    public int StartLine
    {
        get { return startLine; }
        set { startLine = value; }
    }

    int endLine = -1;
    /// <summary>
    /// 注释的结束行 （EndLine）
    /// </summary>
    public int EndLine
    {
        get { return endLine; }
        set { endLine = value; }
    }

    DateTime upTime = DateTime.Now;
    /// <summary>
    /// 注释的时间 （UpTime）
    /// </summary>
    public DateTime UpTime
    {
        get { return upTime; }
        set { upTime = value; }
    }

    int cid = -1;
    /// <summary>
    /// 注释所属源码的ID （Cid）
    /// </summary>
    public int Cid
    {
        get { return cid; }
        set { cid = value; }
    }

    int agree = -1;
    /// <summary>
    /// 赞成数 （Agree）
    /// </summary>
    public int Agree
    {
        get { return agree; }
        set { agree = value; }
    }

    int disagree = -1;
    /// <summary>
    /// 反对数 （Disagree）
    /// </summary>
    public int Disagree
    {
        get { return disagree; }
        set { disagree = value; }
    }
    string context = "";
    /// <summary>
    /// 注释的内容 （Context）
    /// </summary>
    public string Context
    {
        get { return context; }
        set { context = value; }
    }

    int recommend = 0;
    /// <summary>
    /// 是否推荐 （Recommend）
    /// </summary>
    public int Recommend
    {
        get { return recommend; }
        set { recommend = value; }
    }
    private UserEntity user = null;
    /// <summary>
    /// 注释的用户名 （User）
    /// </summary>
    public UserEntity User
    {
        get { return user; }
        set { user = value; }
    }

}
