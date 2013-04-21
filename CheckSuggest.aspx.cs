/***************************************************************************************************
 *
 *\File          CheckSuggest.aspx.cs
 *\Description   推荐
 *\Log           2013.4.15    Ver 1.0    陈一枭
 *               创建文件。
 ***************************************************************************************************/
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CheckSuggest : System.Web.UI.Page
{
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
    public class result
    {
        int data = 0;
        int stat = 0;
        public result(int data, int stat)
        {
            this.data = data;
            this.stat = stat;
        }
    }
}