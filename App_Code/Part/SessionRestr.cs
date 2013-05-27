//--------------------------------------------------------------------------------------
//
//FileName:         SessionRestr.cs
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
///SessionRest 的摘要说明
/// </summary>
public class SessionRest
{
	public SessionRest()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
    public static void Rest(string appsesssid,HttpCookieCollection cookies)
    {
        try
        {
            string session_param_name = "ASPSESSID";
            string session_cookie_name = "ASP.NET_SessionId";

            if (appsesssid != null)
            {
                UpdateCookie(session_cookie_name, appsesssid,cookies);
            }
            else if (HttpContext.Current.Request.QueryString[session_param_name] != null)
            {
                UpdateCookie(session_cookie_name, appsesssid,cookies);
            }
        }
        catch
        {
        }

        try
        {
            string auth_param_name = "AUTHID";
            string auth_cookie_name = System.Web.Security.FormsAuthentication.FormsCookieName;

            if (HttpContext.Current.Request.Form[auth_param_name] != null)
            {
                UpdateCookie(auth_cookie_name, HttpContext.Current.Request.Form[auth_param_name],cookies);
            }
            else if (HttpContext.Current.Request.QueryString[auth_param_name] != null)
            {
                UpdateCookie(auth_cookie_name, HttpContext.Current.Request.QueryString[auth_param_name],cookies);
            }

        }
        catch
        {
        }

    }
    private static void UpdateCookie(string cookie_name, string cookie_value, HttpCookieCollection cookies)
    {
        HttpCookie cookie = cookies.Get(cookie_name);
        if (null == cookie)
        {
            cookie = new HttpCookie(cookie_name);
        }
        cookie.Value = cookie_value;
        cookies.Set(cookie);
    }
}