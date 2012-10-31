using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_EditUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       DataBase db1 = new DataBase();
       int ID=int.Parse( Request.Params["idLabel"]);
       string UserName = tb_UserName.Text;
       string PassWord = tb_PassWord.Text;
       string Email = tb_Email.Text;
       string Sex=rb_Sex.SelectedItem.Text;
       string QQ = tb_QQ.Text;
       bool IsAdmin = tb_CheckBox.Checked;
       string sql = "UPDATE tb_user SET (userName =" + UserName + ", password =" + PassWord + ", email =" + Email + ", sex =" + Sex + ", qq =" + QQ + ", isadmin =IsAdmin, regTime =DateTime.Now) where id=" + ID + "";
       db1.ExCommandNoBack(sql);
       if (UserOperation.Login(Session,UserName,PassWord))
       {
           SmallScript.MessageBox(Page, "修改用户成功。");
           return;
       }
       else
       {
           SmallScript.MessageBox(Page, "修改用户失败。");
           return;
       }
    }
}
