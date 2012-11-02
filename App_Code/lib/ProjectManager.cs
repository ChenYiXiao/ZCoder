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
	public ProjectManager(string projectPath="")
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
        DataSet ds=db.ExCommand("select * from tb_lang");
        List<LangEntity> langs = new List<LangEntity>();
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            LangEntity le=new LangEntity();
            le.Id= (int)ds.Tables[0].Rows[i]["id"];
            le.Name=ds.Tables[0].Rows[i]["name"].ToString();
            le.Description=ds.Tables[0].Rows[i]["description"].ToString();
            le.Ext=ds.Tables[0].Rows[i]["ext"].ToString();
            langs.Add(le);
        }
            return langs;
    }
    
    public List<FileInfo> GetSourcs(List<string> langs)
    {

        return null;
    }
    
    
    
    
    /// <summary>
    /// 清空目录
    /// </summary>
    /// <param name="dir">目录</param>
    public static  void ClearDir(string dir)
    {
        try
        {
            Directory.Delete(dir, true);
        }
        catch
        {
        }
    }
}