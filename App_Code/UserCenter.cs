/***************************************************************************************************
 *                    (c) Copyright 1992-2009 Embedded Products Research Center
 *                                       All Rights Reserved
 *
 *\File          usdl_xxx.h
 *\Description   XXXXXXXXXXXXX
 *\Log           2008.XX.XX    Ver 1.0    张三
 *               创建文件。
 ***************************************************************************************************/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
///UserCenter 的摘要说明
/// </summary>
public class UserCent
{
	public UserCent()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
    public static DataTable getActions(string id)
    {
        string describe = "";
        
        //创新动态表
        DataTable dtActions = new DataTable();
        dtActions.Columns.Add("describe", System.Type.GetType("System.String"));
        dtActions.Columns.Add("date", System.Type.GetType("System.DateTime"));

        //得到发帖信息
        DataBase dbact = new DataBase();
        DataSet ds = dbact.ExCommand("select * from tb_activities where author=" +id );
        foreach (DataRow dr in ds.Tables[0].Rows)
        {
            describe = "TA发表了题为<b ><a href='activity.aspx?id=" + dr["id"].ToString() + "' target='blank'> <span style=\"color: #FF3300\">" + dr["title"] + "<a></span></b> 的帖子。 " + dr["puttime"].ToString();
            dtActions.Rows.Add(describe, dr["puttime"]);
        }

        DataBase dbReply = new DataBase();
        DataSet dsReply = dbReply.ExCommand("select * from tb_replies,tb_activities where tb_replies.author=" + id + "and tb_activities.id=tb_replies.actid");
        foreach (DataRow dr in dsReply.Tables[0].Rows)
        {
            describe = "TA回复了题为<b> <a href='activity.aspx?id=" + dr["actid"].ToString() + "' target='blank'><span style=\"color: green\">" + dr["title"] + "</span></a></b> 的帖子。 " + dr["puttime"].ToString();
            dtActions.Rows.Add(describe, dr["puttime"]);
        }

        DataBase dbBless = new DataBase();
        DataSet dsBless = dbBless.ExCommand("select * from tb_blessings where author=" + id);
        foreach (DataRow dr in dsBless.Tables[0].Rows)
        {
            describe = "TA发表了内容为<b> <a href='blessing.aspx' target='blank'><span style=\"color: blue\">" + dr["message"] + "</span></a></b> 的寄语。 " + dr["puttime"].ToString();
            dtActions.Rows.Add(describe, dr["puttime"]);
        }



        return dtActions;
    }

    public static string complieToUL(DataTable dt)
    {
        string rs = "<p>关于TA的动态总共有 " + dt.Rows.Count.ToString() + " 条。以下为详细情况。</p>";
        rs += "<ul class='actions'>";
        dt.DefaultView.Sort = "date Desc";
        DataTable orderTable=dt.DefaultView.ToTable();
        foreach (DataRow dr in orderTable.Rows)
        {
            rs += "<li class='record'>";
            rs+=dr["describe"].ToString();
            rs += "</li>";
        }
        rs+="<ul>";
        return rs;
    }
}