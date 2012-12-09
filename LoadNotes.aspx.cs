using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoadNotes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        List<NoteEntity> assNotes= NoteOperation.GetNotesBySartLine(3, 6199);
        foreach(NoteEntity ne in  assNotes)
        {
           Response.Write(ne.Context);
        }
    }
}