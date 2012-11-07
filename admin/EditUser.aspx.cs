/***************************************************************************************************
*
*\File          EditUser.aspx
*\Description   后台管理模块。用于后台修改用户个人信息。
*\Log           2012.11.01    Ver 1.0    陈斌
*               创建文件。
***************************************************************************************************/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admin_EditUser : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //判断是否存在该id的用户
            UserEntity ue = UserOperation.GetUser(Request.QueryString["id"].ToString());
            if (ue == null)
            {
                SmallScript.MessageBox(Page, "不存在该用户！点击返回！");
                SmallScript.GoBack(Page);
                return;
            }
            else
            {
                //在表单中显示数据
                tb_UserName.Text = ue.UserName;
                tb_QQ.Text = ue.Qq;
                tb_PassWord.Text = ue.Password;
                tb_Email.Text = ue.Email;
                if (ue.Sex)
                {
                    rb_Sex.SelectedIndex = 0;
                }
                else
                {
                    rb_Sex.SelectedIndex = 1;
                }
                cb_IsAdmin.Checked = ue.Isadmin;
                lb_RegTime.Text = ue.RegTime.ToString();
                lb_ID.Text = ue.Id.ToString();
            }
        }
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        //修改用户信息
        int ID = int.Parse(Request.QueryString["id"].ToString());
        string UserName = tb_UserName.Text;
        string PassWord = tb_PassWord.Text;
        string Email = tb_Email.Text;
        bool Sex = (rb_Sex.SelectedIndex == 0);
        string QQ = tb_QQ.Text;
        bool IsAdmin = cb_IsAdmin.Checked;
        try
        {
            UserOperation.EditUser(UserName, PassWord, Email, Sex, QQ, IsAdmin, ID);
        }
        catch
        {
            SmallScript.MessageBox(Page, "修改失败！");
            return;
        }

        SmallScript.MessageBox(Page, "修改用户成功。");
        SmallScript.goRedirect(Response,Session,"跳转到用户列表 ","~/admin/UserList.aspx");
        return;
    }
}
