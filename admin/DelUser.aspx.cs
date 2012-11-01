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
                lb_UserName.Text = ue.UserName;
                lb_Id.Text = ue.Id.ToString();
                lb_Email.Text = ue.Email;
                lb_Sex.Text = ue.Sex?"男":"女";
                lb_IsAdmin.Text = ue.Isadmin ? "管理员" : "用户";
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/userlist.aspx");
    }
}