/***************************************************************************************************
 *
 *\File          CancelSuggest.aspx.cs
 *\Description   取消推荐
 *\Log           2013.4.15    Ver 1.0    陈一枭
 *               创建文件。
 ***************************************************************************************************/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CancelSuggest : System.Web.UI.Page
{
    static int time = 3;
    static string tip = "";
    static string url = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        string str = Request.QueryString["id"];
        int i = int.Parse(str);
        int j = NoteOperation.cancelrecommend(i);
        string url = "/admin/NoteList.aspx";
        if (j == 0)
        {
            SmallScript.goRedirect(Response, Session, "该注释未被推荐,无需取消", url);
        }
        else {
            SmallScript.goRedirect(Response, Session, "该注释已被取消推荐", url);
        }
    }
}