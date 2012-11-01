using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_DelUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            UserEntity ue = UserOperation.GetUser(Request.QueryString["id"].ToString());
            if (ue != null)
            {
                //在表单中显示数据
                lb_UserName.Text = ue.UserName;
                lb_Id.Text = ue.Id.ToString();
                lb_Email.Text = ue.Email;
                lb_Sex.Text = ue.Sex ? "男" : "女";
                lb_IsAdmin.Text = ue.Isadmin ? "管理员" : "用户";
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/userlist.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            //调用UserOperation类里的userDel方法，通过传入id，进行删除操作
            UserOperation.DelUser(Request.QueryString["id"].ToString());
            SmallScript.goRedirect(Response, Session, "删除成功!", "~/admin/userlist.aspx");
        }
        catch
        {
            //删除失败提示
            SmallScript.MessageBox(Page, "删除失败!");
        }
    }
}