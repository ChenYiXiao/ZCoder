
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
        int isDing = int.Parse(Request.QueryString["isDing"]);
        if (isDing ==1)
        {
            Ding(isDing);
        }
        else if(isDing == 0)
        {
            Ding(isDing);
        }

        
    }
    


    private void Ding(int isDing)
    {
        DingEntity de = new DingEntity();
        de.Uid = UserOperation.GetCurrentUid(Session);
        de.Nid = int.Parse(Request.QueryString["nid"].ToString());
        de.isDing = isDing;
        if (DingOperation.AddDing(de)==true)
        {
            DingOperation.GetDing(de.Nid, de.Uid,de.isDing);
            Response.AddHeader("Refresh", "10"); 
        }
        else {
            SmallScript.MessageBox(Page, "添加发广告会更好的 失败！");
        }

      
    }

    
   /* protected void Dig_Click(object sender, EventArgs e)
    {
        string Id = (((LinkButton)sender).CommandArgument.ToString()).ToString();
        int a = int.Parse(Id); 
        Ding(a);
        
    }
    protected void Cai_Click(object sender, EventArgs e)
    {
        string Id = (((LinkButton)sender).CommandArgument.ToString()).ToString();
        int a = int.Parse(Id);
        Ding(a);
    }*/
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


