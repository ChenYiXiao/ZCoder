using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
///LangOperation 的摘要说明
/// </summary>
public class LangOperation
{
    public LangOperation()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }
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