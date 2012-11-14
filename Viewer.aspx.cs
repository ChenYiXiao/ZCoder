using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Viewer : System.Web.UI.Page
{
    public  LangEntity le = null;
    public CodeEntity ce = null;
    public string Pre = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString["id"].ToString();
        try
        {
            ce= CodeOperation.GetCode(int.Parse(id));
            le = LangOperation.GetLang(ce.Lid);
            Pre += "<pre class=\"brush: " + le.BrushAliases + ";toolbar: false;\">";
            Pre+=File.ReadAllText(Server.MapPath(AppConfiger.GetProjectsDir(Server)+ce.Path),System.Text.Encoding.GetEncoding("GBK"));
            Pre += "</pre>";
        }
        catch { }
    }
}