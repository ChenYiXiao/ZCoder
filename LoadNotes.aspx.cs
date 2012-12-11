using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoadNotes : System.Web.UI.Page
{
    public List<NoteEntity> assNotes = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        int startline =int.Parse( Request.QueryString["startline"].ToString());
        int cid = int.Parse(Request.QueryString["cid"].ToString());
        assNotes = NoteOperation.GetNotesBySartLine(startline, cid);
        
    }
}