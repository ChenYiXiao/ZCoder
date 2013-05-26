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

        int isDing = 5;
        int startline = 0;
        startline = int.Parse(Request.QueryString["startline"].ToString());
        int cid = int.Parse(Request.QueryString["cid"].ToString());
        int Nid = int.Parse(Request.QueryString["id"].ToString());
       
        string str = Request.QueryString["id"];
        int i = int.Parse(str);
        int j = NoteOperation.CancelRecommend(i);
        if (j == 0)
        {
            Response.Redirect("LoadNotes.aspx?nid=" + Nid + "&cid=" + cid + "&startline=" + startline + "&isDing=" + isDing);
        }
        else {
            Response.Redirect("LoadNotes.aspx?nid=" + Nid + "&cid=" + cid + "&startline=" + startline + "&isDing=" + isDing);
        }
    }
}