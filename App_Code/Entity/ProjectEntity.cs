/***************************************************************************************************
 *
 *\File          ProjectEntity.cs
 *\Description   
 *\Log           2012.11.01    Ver 1.0    
 *               创建文件。
 ***************************************************************************************************/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
///ProjectEntity 的摘要说明
/// </summary>
public class ProjectEntity
{
    int id = -1;

    public int Id
    {
        get { return id; }
        set { id = value; }
    }
    string projectName = "";

    public string ProjectName
    {
        get { return projectName; }
        set { projectName = value; }
    }
    int uid = -1;

    public int Uid
    {
        get { return uid; }
        set { uid = value; }
    }
    string description = "";

    public string Description
    {
        get { return description; }
        set { description = value; }
    }
    DateTime upTime = DateTime.Now;

    public DateTime UpTime
    {
        get { return upTime; }
        set { upTime = value; }
    }
    int tid = -1; 

    public int Tid
    {
        get { return tid; }
        set { tid = value; }
    }
	
}