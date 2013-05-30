//--------------------------------------------------------------------------------------
//
//FileName:         AddUser.aspx
//Depiction:        后台管理模块。用户后台增加用户（可选择所增加的用户的权限）。
//Author:	         陈斌 
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
/// 后台添加用户
/// </summary>
public partial class admin_AddUser: System.Web.UI.Page
{
    /// <summary>
    /// Page_Load
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    /// <summary>
    /// 添加按钮
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void A_Button1_Click(object sender, EventArgs e)
    {
        this.Validate();
        if (!IsValid)
        {
            return;
        }
        DataBase db = new DataBase();
        //从表单中取出数据
        string userName = tb_UserName.Text;
        string password = Encrypt.encrypt(tb_Password.Text);
        string email = tb_Email.Text;
        bool isAdmin = cb_IsAdmin.Checked;
        //新增用户的数据库操作
        if (UserOperation.Reg(userName, password, email, "", true, isAdmin, DateTime.Now))
        {
            //添加成功后显示
            SmallScript.MessageBox(Page, "添加用户成功。"+isAdmin); 
            return;
        }
        else
        {
            //失败后显示信息
            SmallScript.MessageBox(Page, "添加用户失败。");
            return;
        }
    }

    protected void A_TB1_TextChanged(object sender, EventArgs e)
    {

    }
}