/***************************************************************************************************
 *
 *\File          CommentEntity.cs
 *\Description   
 *\Log           2012.11.28    Ver 1.0    
 *               创建文件。
 ***************************************************************************************************/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
///CommentEntity 的摘要说明
/// </summary>
public class CommentEntity
{
    int Id = -1;
    public int id {
        get { return id; }
        set { id = value; }
    }

    String commentTitle = "";
    public String CommetTitle {
        get { return CommetTitle; }
        set { CommetTitle = value; }
    }

    String conText = "";
    public String ConText {
        get { return ConText; }
        set { ConText = value; }
    }

    int Agree = -1;
    public int agree {
        get { return agree; }
        set { agree = value; }
    }

    int Disagree = -1;
    public int DisAgree
    {
        get { return DisAgree; }
        set { DisAgree = value; }
    }

    int Uid = -1;
    public int uid {
        get { return uid; }
        set { uid = value; }
    }

    int Nid = -1;
    public int nid
    {
        get { return nid; }
        set { nid = value; }
    }

    DateTime upTime = DateTime.Now;

    public DateTime UpTime
    {
        get { return upTime; }
        set { upTime = value; }
    }
}