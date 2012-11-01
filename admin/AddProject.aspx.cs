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
        ProjectEntity pe = new ProjectEntity();
        pe.ProjectName = tb_ProjectName.Text;
        pe.Tid =int.Parse( ddl_Type.SelectedValue);
        pe.Uid =int.Parse( Session["uid"].ToString());
        pe.UpTime = DateTime.Now;
        if (ProjectOperation.AddProject(pe) == true)
        {
            SmallScript.goRedirect(Response,Session,"工程已成功添加！","/admin/projectlist.aspx");
        }
        else{
            SmallScript.MessageBox(Page,"添加工程失败！");
        };
    }
}