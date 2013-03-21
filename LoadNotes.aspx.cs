
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;


public partial class LoadNotes : System.Web.UI.Page
{
    public List<NoteEntity> assNotes = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        int startline = int.Parse(Request.QueryString["startline"].ToString());
        int cid = int.Parse(Request.QueryString["cid"].ToString());
        assNotes = NoteOperation.GetNotesBySartLine(startline, cid);
        
    }
    


    private void Ding(int Nid)
    {
        DingEntity de = new DingEntity();
       
        de.Uid = UserOperation.GetCurrentUid(Session);
        de.Nid = Nid;
        if (DingOperation.AddDing(de))
        {
            int ID = 1;   /*int.Parse(Request.QueryString["id"].ToString());*/
            DingOperation.GetDing(de.Nid, de.Uid,de.isDing);
            SmallScript.MessageBox(Page, "添加公告失败！");
        }
        else {
            SmallScript.MessageBox(Page, "添加sdf 失败！");
        }
    }

    
    protected void Dig_Click(object sender, EventArgs e)
    {
        LinkButton lb = (LinkButton)sender;
        int a = 0;
        a = int.Parse(lb.CommandArgument.ToString());
        Ding(a);
        
    }
    protected void Cai_Click(object sender, EventArgs e)
    {
        Button lb = (Button)sender;
        int a = 0;
        a = int.Parse(lb.CommandArgument.ToString());
        Ding(a);
    }
   /* protected void Button_Command(object sender, CommandEventArgs e)
    {
        int a=0;
         switch (e.CommandName)
        {
            case "Dig":
                a = int.Parse(e.CommandArgument.ToString());
                Ding(a);
                break;
            case "Cai":
                a = int.Parse(e.CommandArgument.ToString());
                Ding(a);
                break;
           
        }
    }*/
   
}


