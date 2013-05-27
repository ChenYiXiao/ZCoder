//--------------------------------------------------------------------------------------
//
//FileName:         AddProject.aspx.cs
//Depiction:        添加工程的页面
//Author:	        陈一枭       
//CDT:	            2012-11-5  
//Version:	        Ver 1.0    
//                  创建文件。
//--------------------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
/// <summary>
/// Depiction:	添加工程的页面
/// Author:     陈一枭
/// CDT:	    2012-11-5 
/// </summary>
public partial class admin_AddProject : System.Web.UI.Page
{
    /// <summary>
    /// Page_Load
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    /// Author:     陈一枭
    /// CDT:	    2012-11-5 
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    /// <summary>
    ///btn_OK_Click 添加工程的页面
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    /// Author:     陈一枭
    /// CDT:	    2012-11-5 
    protected void btn_OK_Click(object sender, EventArgs e)
    {
        /*初始化工程，并设置属性*/
        ProjectEntity pe = new ProjectEntity();
        pe.ProjectName = tb_ProjectName.Text;
        if (pe.ProjectName == "")
        {
            SmallScript.MessageBox(Page, "请输入工程名！");
            return;
        }
        if (ProjectOperation.CheckProjectNameExist(pe.ProjectName, -1) == true)
        {
            SmallScript.MessageBox(Page, "已存在该名称的工程。请使用其他名称。");
            return;
        }
        pe.Tid = int.Parse(ddl_Type.SelectedValue);
        pe.Uid = int.Parse(Session["uid"].ToString());
        pe.UpTime = DateTime.Now;
        pe.Description = Server.HtmlEncode(tb_Description.Text);
        /*添加工程，并返回是否成功*/
        if (pe.ProjectName == "")
        {
            SmallScript.goRedirect(Response, Session, "工程信息请填写完整！", "/admin/addproject.aspx");
            return;
        }
        if (ProjectOperation.AddProject(pe) == true)
        {
            SmallScript.goRedirect(Response, Session, "工程已成功添加！", "/admin/projectlist.aspx");
        }
        else
        {
            SmallScript.MessageBox(Page, "添加工程失败！");
        };
    }
}