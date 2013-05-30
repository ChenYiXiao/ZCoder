//--------------------------------------------------------------------------------------
//
//FileName:         DingOperation
//Depiction:        
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
///顶或踩的操作
/// </summary>
public class DingOperation
{
    /// <summary>
    /// 
    /// </summary>
	public DingOperation()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}

    /// <summary>
    /// 添加顶操作
    /// </summary>
    /// <param name="de">顶的实例</param>
    /// <returns>添加成功返回true 失败返回false</returns>
    public static bool AddDing(DingEntity de)
    {
        DataBase db = new DataBase();
        try
        {
            string sql = string.Format("INSERT INTO tb_Ding (nid,uid,isDing) VALUES  ( '{0}', '{1}','{2}')", de.Nid, de.Uid, de.isDing);
            db.ExCommandNoBack(sql);
            DataSet rs = db.RunProcReturn("select * from tb_Ding where nid=" + de.Nid + "and uid=" + de.Uid, "tb_Ding");
            int ID = int.Parse(rs.Tables[0].Rows[0]["id"].ToString());
            if (rs.Tables[0].Rows.Count == 1)
            {
                return true;
            }
            else 
            {
            string sql3 = "delete from dbo.tb_Ding where id=" + ID + "";
            db.ExCommandNoBack(sql3);
            return false; 
            }

            

        }
        catch
        {
            return false;
        }
    }
    /// <summary>
    /// 获取顶的信息
    /// </summary>
    /// <param name="nId">注释的ID</param>
    /// <param name="uId">用户的ID </param>
    /// <param name="isDing">顶操作的类型 1为顶 0为踩</param>
    /// <returns></returns>
    public static DingEntity GetDing(int nId,int uId, int isDing)
    {     
        DataBase db = new DataBase();
        DataSet rs = db.RunProcReturn("select * from tb_Ding where nid=" + nId +"and uid=" + uId, "tb_Ding");
        DataSet rs1 = db.RunProcReturn("select * from tb_note where id=" + nId , "tb_note");
        int ding = int.Parse(rs1.Tables[0].Rows[0]["agree"].ToString());
        int cai = int.Parse(rs1.Tables[0].Rows[0]["disagree"].ToString());
        int ID = int.Parse(rs.Tables[0].Rows[0]["id"].ToString());
        ding = ding + 1;
        cai = cai + 1;
        if (rs.Tables[0].Rows.Count >= 1)
        {
            if (isDing ==1 )
            {
                string sql1 = "UPDATE tb_note SET agree =" + ding + " where id="+nId;
                db.ExCommandNoBack(sql1);
            }
            else if(isDing == 0)
            {
                string sql2 = "UPDATE tb_note SET disagree =" + cai+ " where id=" + nId;
                db.ExCommandNoBack(sql2);
            }
        }
        /*else 
        {
            string sql3 = "delete from dbo.tb_Ding where id=" + ID + "";
            db.ExCommandNoBack(sql3);
        }*/
        return null;
    }
  
}






