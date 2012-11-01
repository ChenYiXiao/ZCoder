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
    public const string SiteConfigPath = "/config/site.config";
    public AppConfiger()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }
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
}