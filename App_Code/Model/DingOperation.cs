/***************************************************************************************************        
 *
 *\File          DingOperation
 *\Description   
 *\Log           2013.03.19    Ver 1.0     肖骏涛
 *               创建文件。
 ***************************************************************************************************/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI;

/// <summary>
/// DingOperation 的摘要说明
/// </summary>
public class DingOperation
{
	public DingOperation()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}


    public static bool AddDing(DingEntity de)
    {
        DataBase db = new DataBase();
        try
        {
            string sql = string.Format("INSERT INTO tb_Ding (nid,uid,isDing) VALUES  ( '{0}', '{1}','{2}')", de.Nid, de.Uid, de.isDing);
            db.ExCommandNoBack(sql);
            DataSet rs = db.RunProcReturn("select * from tb_Ding where nid=" + de.Nid + "and uid=" + de.Uid, "tb_Ding");
            int ID = int.Parse(rs.Tables[0].Rows[0]["id"].ToString());
            if (rs.Tables[0].Rows.Count > 1)
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

    public static DingEntity GetDing(int nId,int uId, int isDing)
    {
        /*获取信息*/
      
        DataBase db = new DataBase();
        DataSet rs = db.RunProcReturn("select * from tb_Ding where nid=" + nId +"and uid=" + uId, "tb_Ding");
        DataSet rs1 = db.RunProcReturn("select * from tb_note where id=" + nId , "tb_note");


        int ding = int.Parse(rs1.Tables[0].Rows[0]["agree"].ToString());
        int cai = int.Parse(rs1.Tables[0].Rows[0]["disagree"].ToString());
        int ID = int.Parse(rs.Tables[0].Rows[0]["id"].ToString());
        ding = ding + 1;
        cai = cai + 1;
        if (rs.Tables[0].Rows.Count > 1)
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






