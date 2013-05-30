//--------------------------------------------------------------------------------------
//
//FileName:         ProjectOperation.cs
//Depiction:        工程的操作，包括工程的添加，工程的编辑，工程的删除。
//Author:	           
//CDT:	            2012-12-13
//Version:	        Ver 1.0    
//                  创建文件。
//--------------------------------------------------------------------------------------
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI;

/// <summary>
///工程的操作
/// </summary>
public class ProjectOperation
{
    /// <summary>
    /// 
    /// </summary>
    public ProjectOperation()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }
    /// <summary>
    /// 添加工程
    /// </summary>
    /// <param name="pe">工程的实例</param>
    /// <returns>成功返回true 失败返回false</returns>
    public static bool AddProject(ProjectEntity pe)
    {
        /*增加一个工程*/
        DataBase db = new DataBase();
        try
        {
            string sql = string.Format("INSERT INTO tb_project ( projectName, description, upTime, tid, uid)VALUES  ( '{0}', '{1}','{2}', {3}, {4})", pe.ProjectName, pe.Description, pe.UpTime, pe.Tid, pe.Uid);
            db.ExCommandNoBack(sql);
            return true;
        }
        catch
        {
            return false;
        }
    }
  
    /// <summary>
    /// 检查工程名是否存在
    /// </summary>
    /// <param name="projectName">工程名</param>
    /// <param name="projectId">工程ID</param>
    /// <returns></returns>
    public static bool CheckProjectNameExist(string projectName, int projectId)
    {
        DataBase db = new DataBase();
        string sql = string.Format("select * from tb_project where projectName='{0}' and id != {1}", projectName,projectId);
        if (db.ExCommand(sql).Tables[0].Rows.Count > 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    /// <summary>
    /// 修改工程信息
    /// </summary>
    /// <param name="projectName">工程名 </param>
    /// <param name="description">工程描述</param>
    /// <param name="type">工程类型</param>
    /// <param name="projectId">工程ID</param>
    public static void EditProject(string projectName, string description, int type, int projectId)
    {
        
        DataBase db = new DataBase();
        string sql = "UPDATE tb_project SET projectName ='" + projectName + "',description ='" + description + "',Tid = " + type + " where id=" + projectId.ToString();
        db.ExCommandNoBack(sql);
    }


    /// <summary>
    /// 删除工程
    /// </summary>
    /// <param name="projectId">工程ID</param>
    public static void DelProject(String projectId)
    {
       
        DataBase db = new DataBase();
        string sql = "delete from dbo.tb_project where id=" + projectId + "";
        db.ExCommandNoBack(sql);

    }
    /// <summary>
    /// 获取工程信息
    /// </summary>
    /// <param name="projectId">工程ID</param>
    /// <returns>返回工程实例</returns>
    public static ProjectEntity GetProject(int projectId)
    {
        DataBase db = new DataBase();
        DataSet rs = db.RunProcReturn("select * from tb_project where id=" + projectId, "tb_project");
        if (rs.Tables[0].Rows.Count > 0)
        {
            ProjectEntity pe = new ProjectEntity();
            pe.ProjectName = rs.Tables[0].Rows[0]["projectName"].ToString();
            pe.Uid = int.Parse(rs.Tables[0].Rows[0]["uid"].ToString());
            pe.Tid = int.Parse(rs.Tables[0].Rows[0]["tid"].ToString());
            pe.UpTime = DateTime.Parse(rs.Tables[0].Rows[0]["uptime"].ToString());
            pe.Id = int.Parse(rs.Tables[0].Rows[0]["id"].ToString());
            pe.Description = rs.Tables[0].Rows[0]["description"].ToString();
            return pe;
        }
        return null;
    }
}