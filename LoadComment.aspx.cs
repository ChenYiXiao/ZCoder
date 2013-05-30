//--------------------------------------------------------------------------------------
//
//FileName:           LoadComment.aspx.cs
//Depiction:        评论页面
//Author:	          肖骏涛
//CDT:	            2013-5-13
//Version:	        Ver 1.0    
//                  创建文件。
//--------------------------------------------------------------------------------------
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
/// <summary>
/// 评论页面
/// </summary>
public partial class LoadComment : System.Web.UI.Page
{
    public List<CommentEntity> assComments = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        int nid = int.Parse(Request.QueryString["nid"].ToString());
        assComments = CommentOperation.GetCommentsByNid(nid);

    }
    
}