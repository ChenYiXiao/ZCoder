using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Viewer : System.Web.UI.Page
{
    public  LangEntity langEntity = null;
    public CodeEntity codeEntity = null;
    public UserEntity userEntity = null;
    public string Pre = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString["id"].ToString();
        try
        {
            codeEntity= CodeOperation.GetCode(int.Parse(id));
            langEntity = LangOperation.GetLang(codeEntity.Lid);
            userEntity = UserOperation.GetUser(codeEntity.Uid);
            Pre += "<pre class=\"brush: " + langEntity.BrushAliases + ";toolbar: false;\">";
            Pre+=File.ReadAllText(Server.MapPath(AppConfiger.GetProjectsDir(Server)+codeEntity.Path),System.Text.Encoding.GetEncoding("GBK"));
            Pre += "</pre>";
        }
        catch { }
    }
}