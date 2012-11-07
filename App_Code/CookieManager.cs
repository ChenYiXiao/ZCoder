/***************************************************************************************************
 *                    (c) Copyright 1992-2009 Embedded Products Research Center
 *                                       All Rights Reserved
 *
 *\File          usdl_xxx.h
 *\Description   XXXXXXXXXXXXX
 *\Log           2008.XX.XX    Ver 1.0    张三
 *               创建文件。
 ***************************************************************************************************/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
///CookieManager 的摘要说明
/// </summary>
public class CookieManager
{
	public CookieManager()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}

    public static bool checkCookie(HttpResponse response, string key)
    {
        if (response.Cookies[key] != null && response.Cookies[key].Value != null)
        {
            return true;
        }
        return false;
    }

    public static void SetCookie(HttpResponse response, string key, string value)
    {
        HttpCookie cookieId = new HttpCookie(key, value);
        cookieId.Expires = DateTime.Now.AddDays(7);
        if (response.Cookies[key] == null && response.Cookies[key].Value == null)
        {
            response.Cookies.Add(cookieId); 
            return;
        }
        else
        {
            response.Cookies.Set(cookieId);
        }
    }
}