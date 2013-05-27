//--------------------------------------------------------------------------------------
//
//FileName:         Do_Cai.aspx.cs
//Depiction:        踩一下
//Author:	           肖骏涛
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

public partial class Do_Cai : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int isDing = 0;
        int startline = int.Parse(Request.QueryString["startline"].ToString());
        int cid = int.Parse(Request.QueryString["cid"].ToString());
        DingEntity de = new DingEntity();
        de.Uid = UserOperation.GetCurrentUid(Session);
        de.Nid =  int.Parse(Request.QueryString["id"].ToString());
        de.isDing = isDing;
        if (DingOperation.AddDing(de) == true)
        {
            DingOperation.GetDing(de.Nid, de.Uid, de.isDing);
            Response.Redirect("LoadNotes.aspx?nid=" + de.Nid + "&cid=" + cid + "&startline=" + startline + "&isDing=" + isDing);
        }
        else
        {

            isDing = 3;
            Response.Redirect("LoadNotes.aspx?nid=" + de.Nid + "&cid=" + cid + "&startline=" + startline + "&isDing=" + isDing);
        }        
    }
}