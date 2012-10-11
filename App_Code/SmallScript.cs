using System;
using System.Collections.Generic;

using System.Web;
using System.Net;
using System.Text;

/// <summary>
///SmallScript 的摘要说明
/// </summary>
public class SmallScript
{
	public SmallScript()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
    static public void MessageBox(System.Web.UI.Page page,string message)
    {
        page.Page.ClientScript.RegisterStartupScript(page.GetType(), "", "<script>window.alert('"+message+"')</script>");

    }
    static public void GoBack(System.Web.UI.Page page)
    {
        page.Page.ClientScript.RegisterStartupScript(page.GetType(), "ck1", "history.go(-1);", true);
    }
    public static string getHtml(string url)
    {
        WebClient myWebClient = new WebClient();
        byte[] myDataBuffer = myWebClient.DownloadData(url);
        return Encoding.UTF8.GetString(myDataBuffer);
    }
    public static void goRedirect(HttpResponse response, System.Web.SessionState.HttpSessionState session, string tip, string url)
    {
        session.Add("tip", tip);
        response.Redirect("redirect.aspx?url="+url);
    }
}