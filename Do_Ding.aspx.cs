/***************************************************************************************************
 *
 *\File          Do_Ding.aspx.cs
 *\Description   顶一下
 *\Log           2013.4.10    Ver 1.0    肖骏涛
>>>>>>> 95591acbefed59f0ee52ca13fce0374407032732
 *               创建文件。
 ***************************************************************************************************/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;


public partial class Do_Ding : System.Web.UI.Page
{
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