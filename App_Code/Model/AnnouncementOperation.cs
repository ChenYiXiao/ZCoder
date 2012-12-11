using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
///AnnouncementOperation 的摘要说明
/// </summary>
public class AnnouncementOperation
{
	public AnnouncementOperation()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
    public static void AddAnnoucement(String amtitle, String essay, DateTime time) 
    {
        /*新增公告*/
        DataBase db = new DataBase();
        string sql = string.Format( "INSERT INTO tb_announcement (amtitle,essay,time) VALUES ([0],[1],[2])",amtitle,essay,time);
        db.ExCommandNoBack(sql); 
    }
    public static void DelAnnoucement(String id)
    {
        /*删除公告*/
        DataBase db = new DataBase();
        string sql = "delete from dbo.tb_announcement where id=" + id + "";
        db.ExCommandNoBack(sql);
    }
    public static void EditAnnouncement(int id,String amtitle, String essay) 
    {
        /*更新公告*/
        DataBase db = new DataBase();
        String sql = "UPDATE tb_announcement set amtitle='" + amtitle + "',essay='" + essay + "' where id='" + id + "'";
        db.ExCommandNoBack(sql);
    }
    public static AnnouncementEntity GetAM(int id) 
    {
        DataBase db = new DataBase();
        DataSet rs = db.RunProcReturn("select * from tb_announcement where id=" + id, "tb_announcement");
        if (rs.Tables[0].Rows.Count > 0)
        {
            AnnouncementEntity ae = new AnnouncementEntity();
            ae.Id=int.Parse(rs.Tables[0].Rows[0]["id"].ToString());
            ae.AmTitle = rs.Tables[0].Rows[0]["amtitle"].ToString();
            ae.Essay = rs.Tables[0].Rows[0]["essay"].ToString();
            return ae;
        }
        return null;
    }
    }
