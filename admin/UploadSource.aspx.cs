using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_UploadSource : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_OK_Click(object sender, EventArgs e)
    {
        string targetFolder = AppConfiger.GetSiteSetting(Server, "projects");
        string zipPath = "";
        string UnzipPath = Server.MapPath(targetFolder + "\\" + ddl_Project.SelectedValue.ToString() +"\\");
        if (Session["savepath"] != null)
        {
            zipPath = Session["savepath"].ToString();
        }
        if (zipPath != string.Empty)
        {
            

            AddInfo("</br>开始解压工程压缩包：" + zipPath);
            UnPackHelper uph = new UnPackHelper(zipPath, UnzipPath);
            uph.DoUnPack();
            //wr.unCompressRAR(UnzipPath,Server.MapPath( AppConfiger.GetSiteSetting(Server, "projectsz")), zipPath.Substring(zipPath.LastIndexOf("\\")+1, zipPath.Length - zipPath.LastIndexOf("\\") -1));

            lb_Progess.Text += "</br>工程压缩包解压完成，开始整理代码。";
        }
        else
        {
            lb_Progess.Text += "</br>文件尚未上传！";
        }
    }
    private void AddInfo(string info)
    {
        lb_Progess.Text += "</br>" + info;
    }
}