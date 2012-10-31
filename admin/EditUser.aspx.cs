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
            UserEntity ue = UserOperation.GetUser(Request.QueryString["id"].ToString());
            if (ue == null)
            {
                SmallScript.MessageBox(Page, "不存在该用户！点击返回！");
                SmallScript.GoBack(Page);
                return;
            }
            else
            {
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
        DataBase db1 = new DataBase();
        int ID = int.Parse(Request.QueryString["id"].ToString());
        string UserName = tb_UserName.Text;
        string PassWord = tb_PassWord.Text;
        string Email = tb_Email.Text;
        bool Sex = (rb_Sex.SelectedIndex == 0);
        string QQ = tb_QQ.Text;
        bool IsAdmin = cb_IsAdmin.Checked;
        string sql = "UPDATE tb_user SET userName ='" + UserName + "', password ='" + PassWord + "', email ='" + Email + "', sex =" + (Sex ? 1 : 0).ToString() + ", qq ='" + QQ + "', isadmin=" + (IsAdmin ? 1 : 0).ToString() + " where id=" + ID.ToString();
        try
        {
            db1.ExCommandNoBack(sql);
        }
        catch
        {
            SmallScript.MessageBox(Page, "修改失败！");
            return;
        }

        SmallScript.MessageBox(Page, "修改用户成功。");
        return;
    }
}
