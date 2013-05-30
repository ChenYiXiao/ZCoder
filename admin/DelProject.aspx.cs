//--------------------------------------------------------------------------------------
//
//FileName:         DelProject.aspx
//Depiction:        后台管理模块。用于后台删除工程。
//Author:	          肖骏涛 
//CDT:	            2012-12-13
//Version:	        Ver 1.0    
//                  创建文件。
//--------------------------------------------------------------------------------------
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
/// <summary>
/// 后台删除工程
/// </summary>
public partial class admin_DelProject : System.Web.UI.Page
{
    /// <summary>
    /// Page_Load
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int id = int.Parse(Request.QueryString["id"].ToString());
            ProjectEntity pe = ProjectOperation.GetProject(int.Parse(Request.QueryString["id"].ToString()));
            
            if (pe != null)
            {
                DataBase db = new DataBase();
                DataSet sql = db.ExCommand(string.Format("SELECT tb_project.tid, tb_project.uid, tb_user.userName, "
                + "tb_project.description, tb_project.upTime,  "
                + "tb_project.projectName, tb_type.typeName, tb_project.id FROM tb_project INNER "
                + "JOIN tb_type ON tb_project.tid = tb_type.id INNER JOIN tb_user ON tb_project.uid = tb_user.id  WHERE (tb_project.id ={0} ) ", id));
                string User = sql.Tables[0].Rows[0]["userName"].ToString();
                string Type = sql.Tables[0].Rows[0]["typeName"].ToString();
                //在表单中显示数据
                lb_ProjectName.Text = pe.ProjectName;
                lb_Id.Text = pe.Id.ToString();
                lb_description.Text = pe.Description;
                lb_User.Text = User;
                lb_UpTime.Text = pe.UpTime.ToString();
                lb_Type.Text = Type;
            }
        }
    }
    /// <summary>
    /// 取消删除按钮
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/Projectlist.aspx");
    }
    /// <summary>
    /// 确认删除按钮
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            //调用ProjectOperation类里的DelProject方法，通过传入id，进行删除操作
            ProjectOperation.DelProject(Request.QueryString["id"].ToString());
            SmallScript.goRedirect(Response, Session, "删除成功!", "~/admin/Projectlist.aspx");
        }
        catch
        {
            //删除失败提示
            SmallScript.MessageBox(Page, "删除失败!");
        }
    }
}