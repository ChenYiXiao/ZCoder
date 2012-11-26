/***************************************************************************************************
 *
 *\File          UploadSource.aspx.cs
 *\Description   上传源码页面
 *\Log           2012.11.5   Ver 1.0    陈一枭
 *               创建文件。
 ***************************************************************************************************/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class admin_UploadSource : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_OK_Click(object sender, EventArgs e)
    {
        if (btn_OK.Text == "完成")
        {
            Response.Redirect("RSManager.aspx?dir=" + AppConfiger.GetProjectsDir(Server) + "\\" + ddl_Project.SelectedValue);
        }
        /*找读取工程目录*/
        string targetFolder = AppConfiger.GetSiteSetting(Server, "projects");
        string zipPath = "";
        /*获取解压路径*/
        string UnzipPath = Server.MapPath(targetFolder + "\\" + ddl_Project.SelectedValue.ToString() + "\\");
        /*检查是否已上传文件*/
        int pid = int.Parse(ddl_Project.SelectedValue);
        if (Session["savepath"] != null)
        {
            /*读取*/
            zipPath = Session["savepath"].ToString();
        }
        if (zipPath != string.Empty)
        {
            /*如果已经勾选了清除工程*/
            if (cb_Clear.Checked)
            {
                /*清除工程*/
                ProjectManager.ClearDir(UnzipPath);
                AddInfo("已删除目录：" + UnzipPath);
            }/*End If*/
            AddInfo("开始解压工程压缩包：" + zipPath);
            UnPackHelper uph = new UnPackHelper(zipPath, UnzipPath);
            uph.DoUnPack();
            AddInfo("工程压缩包解压完成，开始整理代码。");
            /*----------------------------------------------*/
            ProjectManager.ClearCodes(pid);
            /*获取全部支持代码*/
            List<LangEntity> langs = ProjectManager.GetLangs();
            /*得到所有的工程内的文件*/
            int count=0;
            foreach (string fileName in Directory.GetFiles(UnzipPath, "*.*", SearchOption.AllDirectories))
            {
                /*如果是已经支持的源码文件*/
                string ext = GetExt(fileName);
                /*是否在支持的语言中*/
                if (ProjectManager.IsLangsList(langs, ext))
                {              
                    CodeEntity ce = new CodeEntity();
                    ce.Lid = ProjectManager.GetLid(langs, ext);
                    ce.Pid = pid;
                    ce.Uid =int.Parse(Session["uid"].ToString());
                    ce.UpTime = DateTime.Now;
                    /*修正目录*/
                    ce.Path=fileName.Replace(Server.MapPath(AppConfiger.GetProjectsDir(Server)),"");   
                    if (ProjectManager.AddCode(ce))
                    {
                        count++;
                        AddInfo("已将文件： " + ce.Path + " 加入代码库。");
                    }
                }
            }
            AddInfo("所有支持的代码已经入库，总共处理了 " + count.ToString() + " 份代码。");
            btn_OK.Text = "完成";
        }
        else
        {
            AddInfo("文件尚未上传！工程上传终止。");
        }
    }

    private string GetExt(string fileName)
    {
        return fileName.Substring(fileName.LastIndexOf(".") + 1, fileName.Length - fileName.LastIndexOf(".") - 1);
    }
    /// <summary>
    /// 简单添加信息的子函数
    /// </summary>
    /// <param name="info">信息</param>
    private void AddInfo(string info)
    {
        tb_Progess.Text += "\n" + info;
    }
}