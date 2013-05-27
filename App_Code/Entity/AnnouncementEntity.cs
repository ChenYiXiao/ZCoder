//--------------------------------------------------------------------------------------
//
//FileName:         AnnouncementEntity.cs
//Depiction:        
//Author:	        陈斌
//CDT:	            2012-12-13
//Version:	        Ver 1.0    
//                  创建文件。
//--------------------------------------------------------------------------------------
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// 公告实体，用于存储和获取公告信息
/// </summary>
public class AnnouncementEntity
{
    int id = -1;
    /// <summary>
    /// 公告的ID （Id）
    /// </summary>
    public int Id
    {
        get { return id; }
        set { id = value; }
    }

    int uid = 0;
    /// <summary>
    /// 添加公告的用户的ID （Uid）
    /// </summary>
        public int Uid
    {
        get { return uid; }
        set { uid = value; }
    }

    string essay = "";
    /// <summary>
    /// 公告的内容 （Essay）
    /// </summary>
    public string Essay
    {
        get { return essay; }
        set { essay = value; }
    }

    string amtitle = "";
    /// <summary>
    /// 公告的标题 （AmTitle）
    /// </summary>
    public string AmTitle
    {
        get { return amtitle; }
        set { amtitle = value; }
    }

    DateTime time = DateTime.Now;
    /// <summary>
    /// 添加公告的时间 （Time）
    /// </summary>
    public DateTime Time
    {
        get { return time; }
        set { time = value; }
    }
}