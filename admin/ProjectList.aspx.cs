//--------------------------------------------------------------------------------------
//
//FileName:          ProjectList.aspx.cs
//Depiction:        工程列表
//Author:	           陈一枭
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

public partial class admin_ProjectList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    /*修正链接*/
    protected void FixNameUrl(object sender, EventArgs e)
    {
        HyperLink hl = (HyperLink)sender;
        hl.NavigateUrl ="RSManager.aspx?dir=" +AppConfiger.GetProjectsDir(Server) + "\\" + hl.NavigateUrl+"&projectName="+ hl.Text;
    }
}