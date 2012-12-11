/***************************************************************************************************
 *
 *\File          AnnouncementEntity.cs
 *\Description   
 *\Log           2012.12.10    Ver 1.0     陈斌
 *               创建文件。
 ***************************************************************************************************/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
///AnnouncementEntity 的摘要说明
/// </summary>
public class AnnouncementEntity
{
    int id = -1;
    public int Id
    {
        get { return id; }
        set { id = value; }
    }

    string essay = "";
    public string Essay
    {
        get { return essay; }
        set { essay = value; }
    }

    string amtitle = "";
    public string AmTitle
    {
        get { return amtitle; }
        set { amtitle = value; }
    }

    DateTime time = DateTime.Now;
    public DateTime Time
    {
        get { return time; }
        set { time = value; }
    }
}