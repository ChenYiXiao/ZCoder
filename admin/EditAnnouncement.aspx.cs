//--------------------------------------------------------------------------------------
//
//FileName:         EditAnnouncement.aspx.cs
//Depiction:        后台管理模块。用于后台修改公告信息。
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
/// <summary>
/// 后台修改公告信息
/// </summary>
public partial class admin_EditAnnouncement : System.Web.UI.Page
{
    /// <summary>
    /// Page_Load
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //判断是否存在该id的公告
            int id = int.Parse(Request.QueryString["id"].ToString());            
            AnnouncementEntity ae = AnnouncementOperation.GetAM(int.Parse(Request.QueryString["id"].ToString()));
            if (ae == null)
            {
                SmallScript.MessageBox(Page, "不存在该公告！点击返回！");
                SmallScript.GoBack(Page);
                return;
            }
            else
            {
                //在表单中显示数据
                DataBase db = new DataBase();
                DataSet sql = db.ExCommand(string.Format("SELECT tb_announcement.id, tb_announcement.uid, tb_announcement.amtitle, tb_announcement.essay, tb_announcement.uptime, tb_user.userName FROM  tb_announcement INNER JOIN  tb_user ON tb_announcement.uid = tb_user.id  WHERE (tb_announcement.id ={0} )", id));
                string User = sql.Tables[0].Rows[0]["userName"].ToString();
                lb_ID.Text = ae.Id.ToString();
                tb_amtitle.Text = ae.AmTitle;
                lb_User.Text = User;
                lb_essay.Text = ae.Essay;
                lb_UpTime.Text =ae.Time.ToString();
                
            }
        }
    }
    /// <summary>
    /// 确认修改按钮
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        //修改公告信息
        int ID = int.Parse(Request.QueryString["id"].ToString());
        string amtitle = tb_amtitle.Text;
        string essay = lb_essay.Text;
        try
        {
            AnnouncementOperation.EditAnnouncement(ID,amtitle,essay);
        }
        catch
        {
            SmallScript.MessageBox(Page, "修改失败！");
            return;
        }

        SmallScript.MessageBox(Page, "修改公告成功。");
        SmallScript.goRedirect(Response, Session, "跳转到公告列表 ", "~/admin/Announcement.aspx");
        return;
    }
}
