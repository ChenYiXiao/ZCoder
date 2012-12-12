/***************************************************************************************************
 *
 *\File          rePassword.aspx.cs
 *\Description   用户修改用户密码
 *\Log           2012.11.07    Ver 1.0    王晓晴
>>>>>>> 95591acbefed59f0ee52ca13fce0374407032732
 *               创建文件。
 ***************************************************************************************************/
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
            /*获取用户ID*/
            UserEntity ue = UserOperation.GetUser(int.Parse(Session["uid"].ToString()));  
            if (ue == null)  
            {
                /*用户id为空返回*/
                SmallScript.MessageBox(Page, "不存在该用户！点击返回！");
                SmallScript.GoBack(Page);
                return;
            }
        }
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
         Validate();
        if (!Page.IsValid)  
        {
            //如果页面验证没通过则返回
            return;
        }
        /*实例化一个数据库*/
        DataBase db1 = new DataBase(); 
        /*获取用户ID*/
        string ID = Session["uid"].ToString(); 
        string PassWord = tb_PassWord.Text;
        String str = Encrypt.encrypt(PassWord);
        string sql = "UPDATE tb_user SET  password ='" + str + "' where id=" + ID.ToString();
        try
        {
            db1.ExCommandNoBack(sql);
        }
        catch
        {
            /*修改成功，页面跳出提示*/
            SmallScript.MessageBox(Page, "修改失败！"); 
            return;
        }
        /*修改失败，页面跳出提示*/
        SmallScript.MessageBox(Page, "修改密码成功。"); 
        return;

    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args) 
    {
        /*对密码长度判断，要求密码在6到18位之间*/
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