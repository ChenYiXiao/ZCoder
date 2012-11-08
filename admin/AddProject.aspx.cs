/***************************************************************************************************
 *
 *\File          AddProject.aspx.cs
 *\Description   添加工程的页面
 *\Log           2012.11.5    Ver 1.0     陈一枭
 *               创建文件。
 ***************************************************************************************************/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class admin_AddProject : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_OK_Click(object sender, EventArgs e)
    {
        /*初始化工程，并设置属性*/
        ProjectEntity pe = new ProjectEntity();
        pe.ProjectName = tb_ProjectName.Text;
        pe.Tid =int.Parse( ddl_Type.SelectedValue);
        pe.Uid =int.Parse( Session["uid"].ToString());
        pe.UpTime = DateTime.Now;
        pe.Description = tb_Description.Text;
        /*添加工程，并返回是否成功*/
        if (ProjectOperation.AddProject(pe) == true)
        {
            SmallScript.goRedirect(Response,Session,"工程已成功添加！","/admin/projectlist.aspx");
        }
        else{
            SmallScript.MessageBox(Page,"添加工程失败！");
        };
    }
}