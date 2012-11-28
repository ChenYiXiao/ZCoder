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
    }

    String commentTitle = "";
    public String CommetTitle {
        get { return commentTitle; }
        set { commentTitle = value; }
    }

    String conText = "";
    public String ConText {
        get { return conText; }
        set { conText = value; }
    }

    int agree = -1;
    public int Agree {
        get { return agree; }
        set { agree = value; }
    }

    int disAgree = -1;
    public int DisAgree
    {
        get { return disAgree; }
        set { disAgree = value; }
    }

    int Uid = -1;
    public int uid {
        get { return Uid; }
        set { Uid = value; }
    }

    int Nid = -1;
    public int nid
    {
        get { return Nid; }
        set { Nid = value; }
    }

    DateTime upTime = DateTime.Now;

    public DateTime UpTime
    {
        get { return upTime; }
        set { upTime = value; }
    }
}