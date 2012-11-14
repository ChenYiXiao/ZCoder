using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class rePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            if (Session["uid"] == null)
            {
                SmallScript.MessageBox(Page, "不存在该用户！点击返回！");
                SmallScript.GoBack(Page);
                return;
            }
            UserEntity ue = UserOperation.GetUser(Session["uid"].ToString());  /*获取用户ID*/
            if (ue == null)  /*用户id为空返回*/
            {
                SmallScript.MessageBox(Page, "不存在该用户！点击返回！");
                SmallScript.GoBack(Page);
                return;
            }
        }
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
         Validate();
        if (!Page.IsValid)  //如果页面验证没通过则返回
        {
            return;
        }
       DataBase db1 = new DataBase(); /*实例化一个数据库*/
        string ID = Session["uid"].ToString(); /*获取用户ID*/
        string PassWord = tb_PassWord.Text;
        string sql = "UPDATE tb_user SET  password ='" + PassWord + "' where id=" + ID.ToString();
        try
        {
            db1.ExCommandNoBack(sql);
        }
        catch
        {
            SmallScript.MessageBox(Page, "修改失败！"); /*修改成功，页面跳出提示*/
            return;
        }

        SmallScript.MessageBox(Page, "修改用户成功。"); /*修改失败，页面跳出提示*/
        return;

    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args) /*对密码长度判断，要求密码在6到18位之间*/
    {
        if (args.Value.Length >= 6 && (args.Value.Length <= 18))
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }
}