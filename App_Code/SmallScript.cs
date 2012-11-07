/***************************************************************************************************
 *
 *\File          SmallScript.cs
 *\Description   小脚本
 *\Log           2012.11.5    Ver 1.0    陈一枭
 *               创建文件。
 ***************************************************************************************************/
using System;
using System.Collections.Generic;
using System.Web;
using System.Net;
using System.Text;

/// <summary>
///通用小脚本
/// </summary>
public class SmallScript
{
	public SmallScript()
	{
	}
    /// <summary>
    /// 消息框
    /// </summary>
    /// <param name="page">Page</param>
    /// <param name="message">提示信息</param>
    static public void MessageBox(System.Web.UI.Page page,string message)
    {
        page.Page.ClientScript.RegisterStartupScript(page.GetType(), "", "<script>window.alert('"+message+"')</script>");

    }
    /// <summary>
    /// 返回
    /// </summary>
    /// <param name="page">Page</param>
    static public void GoBack(System.Web.UI.Page page)
    {
        page.Page.ClientScript.RegisterStartupScript(page.GetType(), "ck1", "history.go(-1);", true);
    }
    /// <summary>
    /// 获取某个Url地址的Html内容编码
    /// </summary>
    /// <param name="url"></param>
    /// <returns></returns>
    public static string getHtml(string url)
    {
        WebClient myWebClient = new WebClient();
        byte[] myDataBuffer = myWebClient.DownloadData(url);
        return Encoding.UTF8.GetString(myDataBuffer);
    }

    /// <summary>
    /// 跳转到提示页面
    /// </summary>
    /// <param name="response">传入Response</param>
    /// <param name="session">传入Session</param>
    /// <param name="tip">提示信息</param>
    /// <param name="url">跳转Url</param>
    public static void goRedirect(HttpResponse response, System.Web.SessionState.HttpSessionState session, string tip, string url)
    {
        session.Add("tip", tip);
        response.Redirect("~/redirect.aspx?url="+url);
    }
}