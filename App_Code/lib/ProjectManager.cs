//--------------------------------------------------------------------------------------
//
//FileName:         ProjectManager.cs
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
using System.IO;
using System.Data;
/// <summary>
///ProjectManager 的摘要说明
/// </summary>
public class ProjectManager
{
    string projectPath = "";
    public ProjectManager(string projectPath = "")
    {
        this.projectPath = projectPath;
    }
    /// <summary>
    /// 获取语言列表
    /// </summary>
    /// <returns></returns>
    public static List<LangEntity> GetLangs()
    {
        DataBase db = new DataBase();
        DataSet ds = db.ExCommand("select * from tb_lang");
        List<LangEntity> langs = new List<LangEntity>();
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            LangEntity le = new LangEntity();
            le.Id = (int)ds.Tables[0].Rows[i]["id"];
            le.Name = ds.Tables[0].Rows[i]["name"].ToString();
            le.Description = ds.Tables[0].Rows[i]["description"].ToString();
            le.Ext = ds.Tables[0].Rows[i]["ext"].ToString();
            le.BrushName = ds.Tables[0].Rows[i]["brushname"].ToString();
            le.BrushFile = ds.Tables[0].Rows[i]["brushfile"].ToString();
            le.BrushAliases = ds.Tables[0].Rows[i]["brushaliases"].ToString();
            langs.Add(le);
        }
        return langs;
    }

    public List<FileInfo> GetSourcs(List<string> langs)
    {

        return null;
    }

    /// <summary>
    /// 检查扩展名是否在支持的源码列表当中
    /// </summary>
    /// <param name="langs">源码列表</param>
    /// <param name="ext">扩展名</param>
    /// <returns></returns>
    public static bool IsLangsList(List<LangEntity> langs, string ext)
    {
        /*循环监测是否在支持的源码列表中*/
        foreach (LangEntity le in langs)
        {
            if (le.Exts.Contains(ext))
            {
                return true;
            }

        }
        return false;
    }
    public static int GetLid(List<LangEntity> langs, string ext)
    {
        /*循环监测是否在支持的源码列表中*/
        foreach (LangEntity le in langs)
        {
            if (le.Exts.Contains(ext))
            {
                return le.Id;
            }

        }
        return -1;
    }

    /// <summary>
    /// 清空目录
    /// </summary>
    /// <param name="dir">目录</param>
    public static void ClearDir(string dir)
    {
        try
        {
            Directory.Delete(dir, true);
        }
        catch
        {
        }
    }
    /// <summary>
    /// 添加代码
    /// </summary>
    /// <param name="ce">代码实体</param>
    /// <returns></returns>
    public static bool AddCode(CodeEntity ce)
    {
        DataBase db = new DataBase();
        try
        {
            db.ExCommand("INSERT INTO tb_code ( pid, uid, lid,path) VALUES    (" + ce.Pid + "," + ce.Uid + "," + ce.Lid + ",'" + ce.Path + "')");
            return true;
        }
        catch
        {
            return false;
        }

    }
    /// <summary>
    /// 删除工程
    /// </summary>
    /// <param name="pid"></param>
    public static void ClearCodes(int pid)
    {
        DataBase db = new DataBase();
        db.ExCommand("delete from tb_code where pid = " + pid.ToString());
    }
}