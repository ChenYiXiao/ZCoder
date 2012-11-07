/***************************************************************************************************
 *                    (c) Copyright 1992-2009 Embedded Products Research Center
 *                                       All Rights Reserved
 *
 *\File          usdl_xxx.h
 *\Description   XXXXXXXXXXXXX
 *\Log           2008.XX.XX    Ver 1.0    张三
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
        string targetFolder = AppConfiger.GetSiteSetting(Server, "projects");
        string zipPath = "";
        string UnzipPath = Server.MapPath(targetFolder + "\\" + ddl_Project.SelectedValue.ToString() + "\\");
        if (Session["savepath"] != null)
        {
            zipPath = Session["savepath"].ToString();
        }
        if (zipPath != string.Empty)
        {

            if (cb_Clear.Checked)
            {
                ProjectManager.ClearDir(UnzipPath);
                AddInfo("已删除目录：" + UnzipPath);
            }
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
    private void AddInfo(string info)
    {
        lb_Progess.Text += "</br>" + info;
    }
}