//--------------------------------------------------------------------------------------
//
//FileName:       AppConfiger.cs  
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
using System.Configuration;

/// <summary>
///AppConfiger 的摘要说明
/// </summary>
public class AppConfiger
{
    /// <summary>
    /// 
    /// </summary>
    public const string SiteConfigPath = "/config/site.config";
    /// <summary>
    /// 
    /// </summary>
    public AppConfiger()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }
    /// <summary>
    /// 获取配置文件
    /// </summary>
    /// <param name="server"></param>
    /// <param name="name"></param>
    /// <returns></returns>
    public static string GetSiteSetting(System.Web.HttpServerUtility server, string name)
    {
        ConfigXmlDocument cfxd = new ConfigXmlDocument();
        cfxd.Load(server.MapPath(SiteConfigPath));
        try
        {
            string value = cfxd.GetElementsByTagName(name)[0].InnerText;
            return value;
        }
        catch
        {
            return "";
        }
    }
    /// <summary>
    /// 获取工程文件  
    /// </summary>
    /// <param name="server"></param>
    /// <returns></returns>
    public static string GetProjectsDir(HttpServerUtility server)
    {
        return GetSiteSetting(server, "projects");
    }
    /// <summary>
    /// 获取工程文件压缩包
    /// </summary>
    /// <param name="server"></param>
    /// <returns></returns>
    public static string GetProjectsZDir(HttpServerUtility server)
    {
        return GetSiteSetting(server, "projectsz");
    }
}