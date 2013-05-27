//--------------------------------------------------------------------------------------
//
//FileName:         doSuggest.aspx.cs
//Depiction:        设为推荐
//Author:	          陈一枭 
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

public partial class doSuggest : System.Web.UI.Page
{
    static int time = 4;
    static string tip = "";
    static string url = "";
    protected void Page_Load(object sender, EventArgs e)
    {

        int isDing = 4;
        int startline = 0;
        startline = int.Parse(Request.QueryString["startline"].ToString());
        int cid = int.Parse(Request.QueryString["cid"].ToString());
        int Nid = int.Parse(Request.QueryString["id"].ToString());

        string str = Request.QueryString["id"];
        int i = int.Parse(str);
        NoteOperation.recommend(i);
        Response.Redirect("LoadNotes.aspx?nid=" + Nid + "&cid=" + cid + "&startline=" + startline + "&isDing=" + isDing);
    }
}