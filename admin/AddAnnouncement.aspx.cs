using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_AddAnnouncement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void tb_submit_Click(object sender, EventArgs e)
    {

        /*初始化工程，并设置属性*/
        AnnouncementEntity ae = new AnnouncementEntity();
        ae.AmTitle = tb_amtitle.Text;
        ae.Essay = tb_essay.Text;
        ae.Uid = UserOperation.GetCurrentUid(Session);
        /*添加工程，并返回是否成功*/
        if (AnnouncementOperation.AddAnnouncement(ae) == true)
        {
            SmallScript.goRedirect(Response, Session, "公告已成功添加！", "/admin/Announcement.aspx");
        }
        else
        {
            SmallScript.MessageBox(Page, "添加公告失败！");
        };
    }




}