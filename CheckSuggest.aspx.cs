//--------------------------------------------------------------------------------------
//
//FileName:         CheckSuggest.aspx.cs
//Depiction:        推荐
//Author:	            陈一枭
//CDT:	            2012-12-13
//Version:	        Ver 1.0    
//                  创建文件。
//--------------------------------------------------------------------------------------
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
/// <summary>
/// 前台推荐
/// </summary>
public partial class CheckSuggest : System.Web.UI.Page
{
    /// <summary>
    /// Page_Load
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
        DataBase db = new DataBase();
        string rs = "";
        DataSet ds_rs = db.ExCommand("select * from tb_note where startline=" + Request.QueryString["startline"].ToString() +
            " and  recommend=1");
        if (ds_rs.Tables[0].Rows.Count > 0)
        {
            rs = "1";
        }
        else
        {
            rs = "0";
        }
        Response.Write("{\"data\":\"" + Request.QueryString["startline"].ToString() + "\",\"status\":\"" + rs + "\",\"count\":\"" +
            Request.QueryString["count"].ToString() + "\"}");
    }
    /// <summary>
    /// 
    /// </summary>
    public class result
    {
        int data = 0;
        int stat = 0;
        /// <summary>
        /// 
        /// </summary>
        /// <param name="data"></param>
        /// <param name="stat"></param>
        public result(int data, int stat)
        {
            this.data = data;
            this.stat = stat;
        }
    }
}