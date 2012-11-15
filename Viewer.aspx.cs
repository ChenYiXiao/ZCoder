/***************************************************************************************************
 *
 *\File          UploadSource.aspx.cs
 *\Description   工程资源管理器
 *\Log           2012.11.12   Ver 1.0    陈一枭
 *               创建文件。
 ***************************************************************************************************/
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
            Pre += "<pre style=\"margin:auto;\" class=\"brush: " + langEntity.BrushAliases + ";toolbar: false;\">";
            Pre+=File.ReadAllText(Server.MapPath(AppConfiger.GetProjectsDir(Server)+codeEntity.Path),System.Text.Encoding.GetEncoding("GBK"));
            Pre += "</pre>";
        }
        catch { }
    }
}