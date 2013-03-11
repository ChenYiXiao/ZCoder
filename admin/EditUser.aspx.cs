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
            UserEntity ue = UserOperation.GetUser(int.Parse(Request.QueryString["id"].ToString()));
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
    public bool IsChina(string CString)
    {

        for (int i = 0; i < CString.Length; i++)
        {

            if (CString[i] >= '0' && CString[i] <= '9')
                continue;
            else
                return true;
        }
        return false;

    }


    protected void btnEdit_Click(object sender, EventArgs e)
    {
        this.Validate();
        if(!this.IsValid)
        {
            SmallScript.MessageBox(Page, "修改失败！"); /*修改失败，页面跳出提示*/
            /*如果页面验证没通过则返回*/
            return;
        }
        else if (tb_Email.Text == "")
        {

            SmallScript.MessageBox(Page, "修改失败！邮箱不能为空！");
            return;
        }
        else if (tb_QQ.Text == "")
        {
            SmallScript.MessageBox(Page, "修改失败！ QQ不能为空！");
            return;
        }
        else if (tb_UserName.Text == "")
        {

            SmallScript.MessageBox(Page, "修改失败！用户名不能为空！");
            return;
        }


        else if (tb_PassWord.Text == "")
        {

            SmallScript.MessageBox(Page, "修改失败！密码不能为空！");
            return;
        }
        else if (tb_PassWord.Text.Length >18)
        {

            SmallScript.MessageBox(Page, "修改失败！密码不能超过18位！");
            return;
        }
        else if (tb_PassWord.Text.Length < 6 )
        {

            SmallScript.MessageBox(Page, "修改失败！密码不能小于6位！");
            return;
        }


        else if (!IsChina(tb_QQ.Text))
        
        {//修改用户信息
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
        else
        {
            SmallScript.MessageBox(Page, "修改失败！ QQ不能为汉字或特殊字符！");
            return;
        }
}
}
