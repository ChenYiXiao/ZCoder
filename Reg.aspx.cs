﻿//--------------------------------------------------------------------------------------
//
//FileName:         Reg.aspx.cs
//Depiction:        用户注册。
//Author:	         王晓晴   
//CDT:	            2012-12-13
//Version:	        Ver 1.0    
//                  创建文件。
//--------------------------------------------------------------------------------------
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
/// <summary>
/// 用户注册
/// </summary>
public partial class Reg : System.Web.UI.Page
{
    /// <summary>
    /// Page_Load
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {

        if (IsPostBack)
        {

        }
    }
    /// <summary>
    /// 注册按钮
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btn_Submit_Click(object sender, EventArgs e)
    /*对用户点击注册按钮后进行信息验证*/
    {
        if (tb_UserName.Text.Length == 0)
        {
            lb_CkTip.Text = "<img src=\"/images/regwrong.png\">请输入用户名。";
            return;
        }
        if (tb_UserName.Text.Length > 10)
        {
            lb_CkTip.Text = "<img src=\"/images/regwrong.png\">用户名过长！";
            return;
        }
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
        String str = Encrypt.encrypt(tb_Password.Text);
        
         if (UserOperation.Reg(tb_UserName.Text.Trim(), str, tb_Email.Text, tb_QQ.Text, true, false, DateTime.Now))
     
         {
             UserOperation.Login(Session, tb_UserName.Text, tb_Password.Text);
           
             SmallScript.goRedirect(Response, Session, "注册成功！", "default.aspx");
            
         }
       
    }
    /// <summary>
    /// 判定用户名是否存在
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void tb_UserName_TextChanged(object sender, EventArgs e)
    /*判断用户名是否存在*/
    {
        if (tb_UserName.Text.Length == 0)
        {
            lb_CkTip.Text = "<img src=\"/images/regwrong.png\">请输入用户名。";
            return;
        }
        if (tb_UserName.Text.Length > 10)
        {
            lb_CkTip.Text = "<img src=\"/images/regwrong.png\">用户名过长！";
            return;
        }
        if (UserOperation.CheckUser(tb_UserName.Text) == true)
        {
            lb_CkTip.Text = "<img src=\"/images/regwrong.png\">用户名已存在。";
        }
        else
        {
            lb_CkTip.Text = "<img src=\"/images/regright.png\">该用户名可以使用。";
        }
    }
 /// <summary>
 /// 判断密码长度
 /// </summary>
 /// <param name="source"></param>
 /// <param name="args"></param>
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