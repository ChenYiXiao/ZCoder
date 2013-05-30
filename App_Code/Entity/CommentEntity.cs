//--------------------------------------------------------------------------------------
//
//FileName:         CommentEntity.cs
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

/// <summary>
///评论的实体，用于存储和获取评论的信息
/// </summary>
public class CommentEntity
{
    int id = -1;
    /// <summary>
    /// 评论的ID （Id）
    /// </summary>
    public int Id {
        get { return id; }
        set { id = value; }
    }

    String commentTitle = "";
    /// <summary>
    /// 评论标题 （CommentTitle）
    /// </summary>
    public String CommentTitle {
        get { return commentTitle; }
        set { commentTitle = value; }
    }

    String conText = "";
    /// <summary>
    /// 评论内容 （ConText）
    /// </summary>
    public String ConText {
        get { return conText; }
        set { conText = value; }
    }

    int agree = -1;
    /// <summary>
    /// 评论的赞成数 （Agree）
    /// </summary>
    public int Agree {
        get { return agree; }
        set { agree = value; }
    }

    int disAgree = -1;
    /// <summary>
    /// 评论的反对数 （DisAgree）
    /// </summary>
    public int DisAgree
    {
        get { return disAgree; }
        set { disAgree = value; }
    }

    int Uid = -1;
    /// <summary>
    /// 评论者的ID （uid）
    /// </summary>
    public int uid {
        get { return Uid; }
        set { Uid = value; }
    }
    int Nid = -1;
   /// <summary>
   /// 评论所属的注释的ID （nid）
   /// </summary>
    public int nid
    {
        get { return Nid; }
        set { Nid = value; }
    }

    DateTime upTime = DateTime.Now;
    /// <summary>
    /// 评论的时间 （UpTime）
    /// </summary>
    public DateTime UpTime
    {
        get { return upTime; }
        set { upTime = value; }
    }
    private UserEntity user = null;
    /// <summary>
    /// 评论者的用户名 （User）
    /// </summary>
    public UserEntity User
    {
        get { return user; }
        set { user = value; }
    }
}