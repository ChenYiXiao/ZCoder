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
        int nid = int.Parse(Request.QueryString["id"].ToString());
        int startline = int.Parse(Request.QueryString["startline"].ToString());
        int cid = int.Parse(Request.QueryString["cid"].ToString());
     
        Response.Redirect("LoadNotes.aspx?nid=" + nid + "&cid=" + cid + "&startline=" + startline + "&isDing=" + isDing);
        
    }
}