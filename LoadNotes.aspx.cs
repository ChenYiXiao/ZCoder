
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
    //public int[] isSuggest = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        int startline = int.Parse(Request.QueryString["startline"].ToString());
        int cid = int.Parse(Request.QueryString["cid"].ToString());
        assNotes = NoteOperation.GetNotesBySartLine(startline, cid);
        int isDing = int.Parse(Request.QueryString["isDing"].ToString());
        //int id = int.Parse(Request.QueryString["id"].ToString());
        /*this.isSuggest = new int[assNotes.Count];
        for (int i = 0; i < assNotes.Count; i++)
        {
            this.isSuggest[i] = NoteOperation.cancelrecommend(assNotes[i].Id);
        }*/
        if (isDing == 3)
        {
            SmallScript.MessageBox(Page, "同一用户不能顶或踩同一个评论两次！");
        }

    }

}


