﻿//--------------------------------------------------------------------------------------
//
//FileName:         Default.aspx.cs
//Depiction:        后台首页
//Author:	        陈一枭
//CDT:	            2012-12-13
//Version:	        Ver 1.0    
//                  创建文件。
//--------------------------------------------------------------------------------------
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
/// <summary>
/// 后台主页
/// </summary>
public partial class _Default : System.Web.UI.Page
{
    /// <summary>
    /// 
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
        /*检查是否已登陆*/
        if (UserOperation.CheckLoged(Session) == false)
        {
            /*未登录*/
            SmallScript.goRedirect(Response, Session, "请先登陆。", "~/login.aspx");
            return;
        }
        /*检查权限*/
        if (UserOperation.CheckIsAdmin(Session) == false)
        {
            /*不具权限*/
            SmallScript.goRedirect(Response, Session, "对不起，您并不具备使用后台的权限。", "~/default.aspx");
        }
    }
}
/// <summary>
/// 
/// </summary>
public class Message
{
    string url = "";
    /// <summary>
    /// 
    /// </summary>
    public string Url
    {
        get { return url; }
        set { url = value; }
    }
    string title = "";
    /// <summary>
    /// 
    /// </summary>
    public string Title
    {
        get { return title; }
        set { title = value; }
    }
    string content = "";
    /// <summary>
    /// 
    /// </summary>
    public string Content
    {
        get { return content; }
        set { content = value; }
    }
}
/// <summary>
/// 
/// </summary>
public class Section
{
    string title = "";

    /// <summary>
    /// 
    /// </summary>
    public string Title
    {
        get { return title; }
        set { title = value; }
    }
    string url = "";
    /// <summary>
    /// 
    /// </summary>
    public string Url
    {
        get { return url; }
        set { url = value; }
    }

}