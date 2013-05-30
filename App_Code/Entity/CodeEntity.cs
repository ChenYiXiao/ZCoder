//--------------------------------------------------------------------------------------
//
//FileName:        CodeEntity.cs 
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

/// <summary>
///源代码的实体，用于存储和获取源代码的信息
/// </summary>
public class CodeEntity
{
    int id = 0;
    /// <summary>
    /// 源码的ID （Id）
    /// </summary>
    public int Id
    {
        get { return id; }
        set { id = value; }
    }
    int pid = 0;
    /// <summary>
    /// 源码所属工程ID （Pid）
    /// </summary>
    public int Pid
    {
        get { return pid; }
        set { pid = value; }
    }
    DateTime upTime = DateTime.Now;
    /// <summary>
    /// 源码的上传时间 （UpTime）
    /// </summary>
    public DateTime UpTime
    {
        get { return upTime; }
        set { upTime = value; }
    }
    int uid = 0;
    /// <summary>
    /// 上传用户的ID （Uid）
    /// </summary>
    public int Uid
    {
        get { return uid; }
        set { uid = value; }
    }
    int lid = 0;
    string path = "";
    /// <summary>
    /// 源码的路径 （Path）
    /// </summary>
    public string Path
    {
        get { return path; }
        set { path = value; }
    }
    /// <summary>
    /// 源码的类型的ID （Lid）
    /// </summary>
    public int Lid
    {
        get { return lid; }
        set { lid = value; }
    }
    /// <summary>
    /// 
    /// </summary>
	public CodeEntity()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}

    
}