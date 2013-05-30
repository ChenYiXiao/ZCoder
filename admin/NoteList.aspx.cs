//--------------------------------------------------------------------------------------
//
//FileName:         NoteList.aspx.cs
//Depiction:        后台查看注释列表
//Author:	         肖骏涛 
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
/// 后台注释列表
/// </summary>
public partial class admin_NoteList : System.Web.UI.Page
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
    /// 
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    /// <summary>
    /// 修正链接
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void fixUrl(object sender, EventArgs e)
    {
        HyperLink hl=(HyperLink)sender;
        NoteEntity ne=NoteOperation.GetNote(int.Parse(hl.NavigateUrl));
        hl.NavigateUrl = string.Format("../loadnotes.aspx?startline={0}&cid={1}&isDing=2", ne.StartLine, ne.Cid);
    }
   
}