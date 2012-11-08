/***************************************************************************************************
 *
 *\File         LoginPanel.ascx.cs
 *\Description   用户登录功能
 *\Log           2012.11.04    Ver 1.0    肖骏涛
 *               创建文件。
 ***************************************************************************************************/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoginPanel : System.Web.UI.UserControl
{
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