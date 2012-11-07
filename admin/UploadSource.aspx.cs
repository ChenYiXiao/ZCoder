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

public partial class admin_UploadSource : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_OK_Click(object sender, EventArgs e)
    {
        /*找读取工程目录*/
        string targetFolder = AppConfiger.GetSiteSetting(Server, "projects");
        string zipPath = "";
        /*获取解压路径*/
        string UnzipPath = Server.MapPath(targetFolder + "\\" + ddl_Project.SelectedValue.ToString() + "\\");
        /*检查是否已上传文件*/
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
            AddInfo( "工程压缩包解压完成，开始整理代码。");

            //以上为工程设置部分
            //以下为代码入库部分
            ProjectManager.GetLangs();
        }
        else
        {
           AddInfo( "文件尚未上传！工程上传终止。");
        }
    }
    /// <summary>
    /// 简单添加信息的子函数
    /// </summary>
    /// <param name="info">信息</param>
    private void AddInfo(string info)
    {
        lb_Progess.Text += "</br>" + info;
    }
}