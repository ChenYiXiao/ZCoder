//--------------------------------------------------------------------------------------
//
//FileName:         LoginPanel.ascx.cs
//Depiction:        用户登录功能
//Author:	        肖骏涛    
//CDT:	            2012-11-4
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
/// 用户登录功能
/// </summary>
public partial class LoginPanel : System.Web.UI.UserControl
{
    /// <summary>
    /// 
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
            /*检验用户是否已登陆*/
            if (UserOperation.CheckLoged(Session))
            {
                Label2.Text = "<a href='/toAlert.aspx'>" + Session["userName"] + "</a> <font color='#CCCCCC'>|</font>  <a href='/logout.aspx?url="+Request.Url+"'>注销</a>";
                Panel1.Visible = false;
                Panel2.Visible = true;
            }
            else
            {
               
                Panel1.Visible = true;
                Panel2.Visible = false;
            }
        
    }
}