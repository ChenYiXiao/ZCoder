/***************************************************************************************************
*
*\File          EditAnnouncement.aspx.cs
*\Description   后台管理模块。用于后台修改公告信息。
*\Log           2012.12.11    Ver 1.0    肖骏涛
*               创建文件。
***************************************************************************************************/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admin_EditAnnouncement : System.Web.UI.Page
{

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
