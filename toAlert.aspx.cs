/***************************************************************************************************
 *                    (c) Copyright 1992-2009 Embedded Products Research Center
 *                                       All Rights Reserved
 *
 *\File          usdl_xxx.h
 *\Description   XXXXXXXXXXXXX
 *\Log           2008.XX.XX    Ver 1.0    王晓晴
 *               创建文件。
 ***************************************************************************************************/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e) 
    {
        
        if (!IsPostBack)
        {
            UserEntity ue = UserOperation.GetUser(Session["uid"].ToString());  /*获取用户ID*/
            if (ue == null)  /*用户id为空返回*/
            {
                SmallScript.MessageBox(Page, "不存在该用户！点击返回！"); 
                SmallScript.GoBack(Page);
                return;
            }
            else
                /*在表单中显示数据*/
            {
         
                tb_QQ.Text = ue.Qq; /*获取并显示用户QQ*/
               
                tb_Email.Text = ue.Email; /*获取并显示用户邮箱地址*/
                  if (ue.Sex) /*获取并显示用户性别*/
                {
                    rb_Sex.SelectedIndex = 0;
                }
                else
                {
                    rb_Sex.SelectedIndex = 1;
                }
      
            }
        }
    }
    protected void btnEdit_Click(object sender, EventArgs e) 
    {
        DataBase db1 = new DataBase(); /*实例化一个数据库*/
        string ID = Session["uid"].ToString(); /*获取用户ID*/
        /*获取用户填写信息*/
        bool Sex = (rb_Sex.SelectedIndex == 0);
        string Email = tb_Email.Text;
        string QQ = tb_QQ.Text;
        string sql = "UPDATE tb_user SET  email ='" + Email + "', sex =" + (Sex ? 1 : 0).ToString() + ",  qq ='" + QQ + "' where id=" + ID.ToString(); /*执行数据库更新语句*/
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

    protected void tb_Password_TextChanged(object sender, EventArgs e)
    {

    }
}