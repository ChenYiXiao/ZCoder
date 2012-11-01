using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
/// <summary>
///ProjectManager 的摘要说明
/// </summary>
public class ProjectManager
{
	public ProjectManager()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
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