using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class doSuggest : System.Web.UI.Page
{
    static int time = 3;
    static string tip = "";
    static string url = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        string str = Request.QueryString["id"];
        int i = int.Parse(str);
        NoteOperation.recommend(i);
        string url = "/admin/NoteList.aspx";
        SmallScript.goRedirect(Response, Session, "推荐成功", url); 
    }
}