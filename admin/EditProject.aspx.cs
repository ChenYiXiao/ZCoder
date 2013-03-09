/***************************************************************************************************
*
*\File          EditProject.aspx
*\Description   后台管理模块。用于后台修改工程信息。
*\Log           2012.11.27    Ver 1.0    肖骏涛
*               创建文件。
***************************************************************************************************/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admin_EditProject : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //判断是否存在该id的工程
            int id = int.Parse(Request.QueryString["id"].ToString());
            ProjectEntity pe = ProjectOperation.GetProject(int.Parse(Request.QueryString["id"].ToString()));
            if (pe == null)
            {
                SmallScript.MessageBox(Page, "不存在该工程！点击返回！");
                SmallScript.GoBack(Page);
                return;
            }
            else
            {
                //在表单中显示数据
                DataBase db = new DataBase();
                DataSet sql = db.ExCommand(string.Format("SELECT tb_project.tid, tb_project.uid, tb_user.userName, "
                + "tb_project.description, tb_project.upTime,  "
                + "tb_project.projectName, tb_type.typeName, tb_project.id FROM tb_project INNER "
                + "JOIN tb_type ON tb_project.tid = tb_type.id INNER JOIN tb_user ON tb_project.uid = tb_user.id  WHERE (tb_project.id ={0} ) ",id));
                string User= sql.Tables[0].Rows[0][2].ToString();
                string Type = sql.Tables[0].Rows[0][0].ToString();
                tb_ProjectName.Text = pe.ProjectName;
                lb_User.Text = User;
                db_Type.SelectedIndex =int.Parse(Type);
                tb_description.Text = pe.Description;
                lb_UpTime.Text = pe.UpTime.ToString();
                lb_ID.Text = pe.Id.ToString();
            }
        }
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        //修改工程信息
   
        int ID = int.Parse(Request.QueryString["id"].ToString());
        string ProjectName = tb_ProjectName.Text;
        if (ProjectName == "")
        {
            SmallScript.MessageBox(Page, "工程名不能为空！");
            return;
        }
        int Type = Convert.ToInt32(db_Type.SelectedItem.Value);
        string description = tb_description.Text;  
        try
        {
            ProjectOperation.EditProject(ProjectName,description,Type,ID);
        }
        catch
        {
            SmallScript.MessageBox(Page, "修改失败！");
            return;
        }

        SmallScript.MessageBox(Page, "修改工程成功。");
        SmallScript.goRedirect(Response,Session,"跳转到工程列表 ","~/admin/ProjectList.aspx");
        return;
    }
}
