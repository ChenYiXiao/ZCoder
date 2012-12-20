/***************************************************************************************************
*
*\File          Redirect.aspx
*\Description   跳转功能实现
*\Log           2012.11.01    Ver 1.0    陈斌
*               创建文件。
***************************************************************************************************/

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
    /***************************************************************************************************
    *\Function      Timer1_Tick
    *\Description   通过传入两个系统默认参数进行页面跳转。
    *\Parameter     url 目标页面的链接
    *\Return        void
    *\Note          无
    *\Log           2012.11.01    Ver 1.0    陈斌
    *               创建函数。
    ***************************************************************************************************/
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