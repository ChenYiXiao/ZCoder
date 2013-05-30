//--------------------------------------------------------------------------------------
//
//FileName:         AnnouncementOperation.cs
//Depiction:        
//Author:	         肖骏涛
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
///公告的操作。
/// </summary>
public class AnnouncementOperation
{
    /// <summary>
    /// 
    /// </summary>
	public AnnouncementOperation()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
  /// <summary>
  /// 添加公告
  /// </summary>
  /// <param name="ae">公告的实例</param>
  /// <returns>添加成功返回true，添加失败返回 false</returns>
    public static bool AddAnnouncement(AnnouncementEntity ae)
    {
        DataBase db = new DataBase();
        try
        {
            string sql = string.Format("INSERT INTO tb_announcement (amtitle,essay,uid) VALUES  ( '{0}', '{1}','{2}')", ae.AmTitle, ae.Essay,ae.Uid);
            db.ExCommandNoBack(sql);
            return true;
        }
        catch
        {
            return false;
        }
    }
    /// <summary>
    /// 删除公告
    /// </summary>
    /// <param name="id">公告ID</param>
    public static void DelAnnouncement(String id)
    {
        
        DataBase db = new DataBase();
        string sql = "delete from dbo.tb_announcement where id=" + id + "";
        db.ExCommandNoBack(sql);
    }
    /// <summary>
    /// 更新公告
    /// </summary>
    /// <param name="ID">公告ID</param>
    /// <param name="amtitle">公告标题</param>
    /// <param name="essay">公告内容</param>
    public static void EditAnnouncement(int ID,String amtitle, String essay) 
    {
      
        DataBase db = new DataBase();
        String sql = "UPDATE tb_announcement SET amtitle='" + amtitle + "',essay='" + essay + "' where id=" + ID.ToString();
        db.ExCommandNoBack(sql);
    }
    /// <summary>
    /// 获取公告信息
    /// </summary>
    /// <param name="id">公告ID</param>
    /// <returns>返回公告实例</returns>
    public static AnnouncementEntity GetAM(int id) 
    {
        DataBase db = new DataBase();
        DataSet rs = db.RunProcReturn("select * from tb_announcement where id=" + id, "tb_announcement");
        if (rs.Tables[0].Rows.Count > 0)
        {
            AnnouncementEntity ae = new AnnouncementEntity();
            ae.Id=int.Parse(rs.Tables[0].Rows[0]["id"].ToString());
            ae.Uid = int.Parse(rs.Tables[0].Rows[0]["uid"].ToString());
            ae.AmTitle = rs.Tables[0].Rows[0]["amtitle"].ToString();
            ae.Essay = rs.Tables[0].Rows[0]["essay"].ToString();
            ae.Time = DateTime.Parse(rs.Tables[0].Rows[0]["uptime"].ToString());
            return ae;
        }
        return null;
    }
    }
