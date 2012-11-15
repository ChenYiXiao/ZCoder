/***************************************************************************************************
 *
 *\File          Reg.aspx.cs
 *\Description   用户注册。
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

public partial class Reg : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (IsPostBack)
        {

        }
    }
    protected void btn_Submit_Click(object sender, EventArgs e) 
    /*对用户点击注册按钮后进行信息验证*/
    {
        
        Validate();
        if (!Page.IsValid)  
        {
            /*如果页面验证没通过则返回*/
            return;
        }
        if (!cb_Agree.Checked) 
        {
            /*对是否同意用户协议验证*/
            SmallScript.MessageBox(Page, "您必须同意用户协议！");  
            /*未同意协议返回注册页面*/
            return;
        }
        if (UserOperation.Reg(tb_UserName.Text, tb_Password.Text, tb_Email.Text, tb_QQ.Text, true, false, DateTime.Now)) 
            /*验证通过*/
        {
            UserOperation.Login(Session, tb_UserName.Text, tb_Password.Text); 
            /*注册成功则直接登录*/
            SmallScript.goRedirect(Response, Session, "注册成功！", "default.aspx"); 
            /*跳转到跳转界面显示*/
        }
    }
    protected void tb_UserName_TextChanged(object sender, EventArgs e) 
        /*判断用户名是否存在*/
    {
        if (UserOperation.CheckUser(tb_UserName.Text) == true) 
        {
            lb_CkTip.Text = "<img src=\"/images/regwrong.png\">用户名已存在。";
        }
        else
        {
            lb_CkTip.Text = "<img src=\"/images/regright.png\">该用户名可以使用。";
        }
    }
    protected void tb_ConfirmPwd_TextChanged(object sender, EventArgs e)
    {
       
    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args) 
        /*对密码长度判断，要求密码在6到18位之间*/
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
   
 /*   protected void tb_Password_TextChanged(object sender, EventArgs e)
    {
        if (tb_Password.Text.Length >= 6 && tb_Password.Text.Length <= 18)
        {
            lb_PwdTip.Text = "<img src=\"/images/regright.png\">密码长度正确。";
        }
        else
        {
            lb_PwdTip.Text = "<img src=\"/images/regwrong.png\">密码长度应该在4-18位之间。";
        }
      
    }*/
}