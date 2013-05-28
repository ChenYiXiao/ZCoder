//--------------------------------------------------------------------------------------
//
//FileName:         Redirect.aspx
//Depiction:        跳转功能实现
//Author:	         陈斌  
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

public partial class Redirect : System.Web.UI.Page
{
    static int time = 3;
    static string tip = "";
    static string url = "";
    protected override void OnPreInit(EventArgs e)
    {
        if (Request.UrlReferrer.AbsoluteUri.LastIndexOf("admin") != -1)
        {
            this.MasterPageFile = "/admin/MasterPage.master";
        }
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        url = url.Replace("~", "");
        if (string.IsNullOrEmpty(url))
        {
            url = "/default.aspx";
        }
        if (!IsPostBack)
        {
            try
            {
                time = 3;
                url = Request.QueryString["url"].ToString();
                if (Session["tip"] != null)
                    tip = Session["tip"].ToString();
                lbtip.Text = tip + "3秒后自动跳转，您也可以点击<a href='" + url + "' style='color:#999999;'>直接跳转</a>。";
            }
            catch
            {
            }
        }
    }
 
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        try
        {
            time = time - 1;
            lbtip.Text = tip + time.ToString() + "秒后自动跳转，您也可以点击<a href='" + url + "' style='color:#999999;'>直接跳转</a>。";
            if (time < 1)
            {
                Response.Redirect(url);
            }
        }
        catch
        {
        }
    }
}