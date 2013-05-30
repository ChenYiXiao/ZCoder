//--------------------------------------------------------------------------------------
//
//FileName:         search_code.aspx.cs
//Depiction:        用户搜索源代码
//Author:	        肖骏涛   
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
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
/// <summary>
/// 用户搜索源代码
/// </summary>
public partial class search_code : System.Web.UI.Page
{
    /// <summary>
    /// 
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void search_Click(object sender, EventArgs e)
    {
        string message = search_textbox.Text;
        Response.Redirect("code_List.aspx?path=" + message);
    }

   
}