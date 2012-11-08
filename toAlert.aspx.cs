/***************************************************************************************************
 *                    (c) Copyright 1992-2009 Embedded Products Research Center
 *                                       All Rights Reserved
 *
 *\File          toAlert.aspx.cs
 *\Description   用户个人资料的修改。
 *\Log           2012.11.07    Ver 1.0    王晓晴
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
            UserEntity ue = UserOperation.GetUser(Session["uid"].ToString());
            if (ue == null)
            {
                SmallScript.MessageBox(Page, "不存在该用户！点击返回！");
                SmallScript.GoBack(Page);
                return;
            }
            else
            {
         
                tb_QQ.Text = ue.Qq;
               
                tb_Email.Text = ue.Email;
                  if (ue.Sex)
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
        DataBase db1 = new DataBase();
        string ID = Session["uid"].ToString();

        bool Sex = (rb_Sex.SelectedIndex == 0);
        string Email = tb_Email.Text;
        string QQ = tb_QQ.Text;
        /*将修改好的个人资料录入数据库*/
        string sql = "UPDATE tb_user SET  email ='" + Email + "', sex =" + (Sex ? 1 : 0).ToString() + ",  qq ='" + QQ + "' where id=" + ID.ToString();
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

    protected void tb_Password_TextChanged(object sender, EventArgs e)
    {

    }
}