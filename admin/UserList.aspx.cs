//--------------------------------------------------------------------------------------
//
//FileName:         UserList.aspx.cs
//Depiction:        
//Author:	           
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

public partial class admin_UserList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void fixAdmin(object sender, EventArgs e)
    {
        Label lb=(Label)sender;
        if (lb.Text == "True")
        {
            lb.Text = "管理员";
        }
        else
        {
            lb.Text = "会员";
        }
    }
    protected void fixSex(object sender, EventArgs e)
    {
        Label lb = (Label)sender;
        if (lb.Text == "True")
        {
            lb.Text = "男";
        }
        else
        {
            lb.Text = "女";
        }
    }
}