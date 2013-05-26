/***************************************************************************************************
 *            
 *
 *\File          ProjectOperation.cs
 *\Description   工程的操作，包括工程的添加，工程的编辑，工程的删除。
 *\Log           2012.11.27    Ver 1.0    
 *               创建文件。
 ***************************************************************************************************/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI;

/// <summary>
///ProjectOperation 的摘要说明
/// </summary>
public class ProjectOperation
{
    public ProjectOperation()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }
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
    public static bool CheckProjectNameExist(string projectName,int projectId)
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


    public static void EditProject(string projectName, string description, int type, int projectId)
    {
        /*工程的修改*/
        DataBase db = new DataBase();
        string sql = "UPDATE tb_project SET projectName ='" + projectName + "',description ='" + description + "',Tid = " + type + " where id=" + projectId.ToString();
        db.ExCommandNoBack(sql);
    }



    public static void DelProject(String projectId)
    {
        /*删除工程*/
        DataBase db = new DataBase();
        string sql = "delete from dbo.tb_project where id=" + projectId + "";
        db.ExCommandNoBack(sql);

    }

    public static ProjectEntity GetProject(int projectId)
    {
        /*获取工程信息*/
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