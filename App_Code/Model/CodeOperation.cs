using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
///CodeOperation 的摘要说明
/// </summary>
public class CodeOperation
{
    public CodeOperation()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }
    public static CodeEntity GetCode(int id)
    {
        DataBase db = new DataBase();
        DataSet ds = db.ExCommand("select * from tb_code where id=" + id.ToString());
        CodeEntity ce = new CodeEntity();
        ce.Id = (int)ds.Tables[0].Rows[0]["id"];
        ce.Pid = int.Parse(ds.Tables[0].Rows[0]["pid"].ToString());
        ce.UpTime = DateTime.Parse(ds.Tables[0].Rows[0]["uptime"].ToString());
        ce.Uid = int.Parse(ds.Tables[0].Rows[0]["uid"].ToString());
        ce.Lid = int.Parse(ds.Tables[0].Rows[0]["lid"].ToString());
        ce.Path = ds.Tables[0].Rows[0]["path"].ToString();
        return ce;
    }
}