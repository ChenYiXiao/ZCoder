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
/// <summary>
/// 后台工程列表
/// </summary>
public partial class admin_ProjectList : System.Web.UI.Page
{
    /// <summary>
    /// 
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {

    }
 /// <summary>
 /// 
 /// </summary>
 /// <param name="sender"></param>
 /// <param name="e"></param>
    protected void FixNameUrl(object sender, EventArgs e)
    {
        HyperLink hl = (HyperLink)sender;
        hl.NavigateUrl ="RSManager.aspx?dir=" +AppConfiger.GetProjectsDir(Server) + "\\" + hl.NavigateUrl+"&projectName="+ hl.Text;
    }
}