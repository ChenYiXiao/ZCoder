//--------------------------------------------------------------------------------------
//
//FileName:          AddAnnouncement.aspx.cs
//Depiction:        添加公告
//Author:	          肖骏涛
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
/// <summary>
/// 后台添加公告
/// </summary>
public partial class admin_AddAnnouncement : System.Web.UI.Page
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
    /// 添加按钮
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
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