//--------------------------------------------------------------------------------------
//
//FileName:         LangOperation.cs
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
using System.Data;

/// <summary>
///源码类型的操作
/// </summary>
public class LangOperation
{
    public LangOperation()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }
    /// <summary>
    /// 获取源码类型的信息
    /// </summary>
    /// <param name="id">类型的ID</param>
    /// <returns>返回类型的实例</returns>
    public static LangEntity GetLang(int id)
    {
        DataBase db = new DataBase();
        DataSet ds = db.ExCommand("select * from tb_lang where id=" + id.ToString());
        LangEntity le = new LangEntity();
        le.Id = (int)ds.Tables[0].Rows[0]["id"];
        le.Name = ds.Tables[0].Rows[0]["name"].ToString();
        le.Description = ds.Tables[0].Rows[0]["description"].ToString();
        le.Ext = ds.Tables[0].Rows[0]["ext"].ToString();
        le.BrushName = ds.Tables[0].Rows[0]["brushname"].ToString();
        le.BrushFile = ds.Tables[0].Rows[0]["brushfile"].ToString();
        le.BrushAliases = ds.Tables[0].Rows[0]["brushaliases"].ToString();
        return le;
    }
}