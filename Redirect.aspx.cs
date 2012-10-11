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
    protected void Page_Load(object sender, EventArgs e)
    {
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