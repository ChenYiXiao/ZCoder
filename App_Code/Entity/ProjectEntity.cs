//--------------------------------------------------------------------------------------
//
//FileName:         ProjectEntity.cs
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
///工程的实体，用于存储和获取工程的信息
/// </summary>
public class ProjectEntity
{
    int id = -1;
    /// <summary>
    /// 工程的ID （Id）
    /// </summary>
    public int Id
    {
        get { return id; }
        set { id = value; }
    }
    string projectName = "";
    /// <summary>
    /// 工程名 （ProjectName）
    /// </summary>
    public string ProjectName
    {
        get { return projectName; }
        set { projectName = value; }
    }
    int uid = -1;
    /// <summary>
    /// 上传工程的用户的ID　（Uid）
    /// </summary>
    public int Uid
    {
        get { return uid; }
        set { uid = value; }
    }
    string description = "";
    /// <summary>
    /// 工程描述　（Description）
    /// </summary>
    public string Description
    {
        get { return description; }
        set { description = value; }
    }
    DateTime upTime = DateTime.Now;
    /// <summary>
    /// 上传工程的时间　（UpTime）
    /// </summary>
    public DateTime UpTime
    {
        get { return upTime; }
        set { upTime = value; }
    }
    int tid = -1; 
    /// <summary>
    /// 工程类型的ID　（Tid）
    /// </summary>
    public int Tid
    {
        get { return tid; }
        set { tid = value; }
    }
	
}