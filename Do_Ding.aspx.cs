//--------------------------------------------------------------------------------------
//
//FileName:         Do_Ding.aspx.cs
//Depiction:        顶一下
//Author:	          肖骏涛  
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
using System.Configuration;
using System.Data;
/// <summary>
/// 顶一下
/// </summary>
public partial class Do_Ding : System.Web.UI.Page
{
    /// <summary>
    /// 
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
        int isDing = 1;
        int startline = int.Parse(Request.QueryString["startline"].ToString());
        int cid = int.Parse(Request.QueryString["cid"].ToString());
        DingEntity de = new DingEntity();
        de.Uid = UserOperation.GetCurrentUid(Session);
        de.Nid = int.Parse(Request.QueryString["id"].ToString());
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