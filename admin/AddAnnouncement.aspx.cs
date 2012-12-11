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
        String amtitle = tb_amtitle.Text;
        String essay = tb_essay.Text;
        DateTime time = DateTime.Now;
        AnnouncementOperation.AddAnnoucement(amtitle, essay, time);
    }
}