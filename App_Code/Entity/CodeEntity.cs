using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
///CodeEntity 的摘要说明
/// </summary>
public class CodeEntity
{
    int id = 0;

    public int Id
    {
        get { return id; }
        set { id = value; }
    }
    int pid = 0;

    public int Pid
    {
        get { return pid; }
        set { pid = value; }
    }
    DateTime upTime = DateTime.Now;

    public DateTime UpTime
    {
        get { return upTime; }
        set { upTime = value; }
    }
    int uid = 0;

    public int Uid
    {
        get { return uid; }
        set { uid = value; }
    }
    int lid = 0;
    string path = "";

    public string Path
    {
        get { return path; }
        set { path = value; }
    }

    public int Lid
    {
        get { return lid; }
        set { lid = value; }
    }
	public CodeEntity()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}

    
}