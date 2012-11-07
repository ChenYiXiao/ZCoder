/***************************************************************************************************
 *                    (c) Copyright 1992-2009 Embedded Products Research Center
 *                                       All Rights Reserved
 *
 *\File          usdl_xxx.h
 *\Description   XXXXXXXXXXXXX
 *\Log           2008.XX.XX    Ver 1.0    张三
 *               创建文件。
 ***************************************************************************************************/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BigLogin : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (UserOperation.CheckLoged(Session))
        {

            Panel1.Visible = false;
            hlUserName.Text = Session["userName"].ToString();
            if (UserOperation.CheckIsAdmin(Session))
                hlAdmin.Visible = true;
            Panel2.Visible = true;
            return;
        }
        else
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        UserOperation.Login(Session, tbUserName.Text, tbPassword.Text);
        Response.Redirect(Request.Url.AbsoluteUri);
    }
}