/***************************************************************************************************
 *
 *\File          AddAnnouncement.aspx.cs
 *\Description   添加公告
 *\Log           2012.12.13    Ver 1.0    肖骏涛
 *               创建文件。
 ***************************************************************************************************/
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
        if (ae.Essay == "" || ae.AmTitle == "")
        { 
                SmallScript.MessageBox(Page, "请输入完整公告信息！");
                return;
        }
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