/***************************************************************************************************
 *
 *\File          Upload.aspx
 *\Description   用于上传文件的页面，该也不显示任何内容，只用于处理上传JS脚本。
 *\Log           2012.11.5    Ver 1.0    陈一枭
 *               创建文件。
 ***************************************************************************************************/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class admin_Upload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*用于保持Session，解决发置换Session的问题*/
        SessionRest.Rest(Request.Form["AUTHID"].ToString(), Response.Cookies);
        /*获取配置项中目录*/
        string targetFolder = AppConfiger.GetSiteSetting(Server, "projectsz");
        /*读出文件*/
        HttpPostedFile file = Request.Files["FileData"];
        /*获得上传目录*/
        string uploadpath = Server.MapPath(targetFolder + "\\");
        /*判断文件是否为空*/
        if (file != null)
        {
            /*判断目录是否存在*/
            if (!Directory.Exists(uploadpath))
            {
                /*创建目录*/
                Directory.CreateDirectory(uploadpath);
            }
            /*保存文件*/
            string savePath = uploadpath + DateTime.Now.ToFileTime() + ".zip";
            file.SaveAs(savePath);
            /*在Session中存入保存文件路径*/
            Session["savePath"] = savePath;
           
        }
        else
        {
            /*输出失败*/
            Response.Write("0");
        }
    }
}