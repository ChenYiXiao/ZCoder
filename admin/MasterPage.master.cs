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

public partial class admin_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (UserOperation.CheckLoged(Session) == false)
        {
            SmallScript.goRedirect(Response, Session, "请先登陆。", "~/login.aspx");
            return;
        }
        if (UserOperation.CheckIsAdmin(Session) == false )
        {
            SmallScript.goRedirect(Response, Session, "对不起，您并不具备使用后台的权限。", "~/default.aspx");
        }
    }
}
