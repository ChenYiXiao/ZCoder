//--------------------------------------------------------------------------------------
//
//FileName:         DelAnnouncement.aspx.cs
//Depiction:        后台管理模块。用于后台删除公告。
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
using System.Data;

public partial class admin_DelAnnouncement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int id = int.Parse(Request.QueryString["id"].ToString());
            AnnouncementEntity ae = AnnouncementOperation.GetAM(int.Parse(Request.QueryString["id"].ToString()));

            if (ae != null)
            {
                DataBase db = new DataBase();
                DataSet sql = db.ExCommand(string.Format("SELECT tb_announcement.id, tb_announcement.uid, tb_announcement.amtitle, tb_announcement.essay, tb_announcement.uptime, tb_user.userName FROM  tb_announcement INNER JOIN  tb_user ON tb_announcement.uid = tb_user.id  WHERE (tb_announcement.id ={0} ) ", id));
                string User = sql.Tables[0].Rows[0]["userName"].ToString();
                //在表单中显示数据
                lb_Id.Text = ae.Id.ToString();
                lb_amtitle.Text = ae.AmTitle;
                lb_User.Text = User;
                lb_UpTime.Text = ae.Time.ToString();
                lb_essay.Text = ae.Essay;
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/Announcement.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            //调用AnnouncementOperation类里的DelAnnouncement方法，通过传入id，进行删除操作
            AnnouncementOperation.DelAnnouncement(Request.QueryString["id"].ToString());
            SmallScript.goRedirect(Response, Session, "删除成功!", "~/admin/Announcement.aspx");
        }
        catch
        {
            //删除失败提示
            SmallScript.MessageBox(Page, "删除失败!");
        }
    }
}
