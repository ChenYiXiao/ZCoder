using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Submit_Click(object sender, EventArgs e)
    {
        if (!Page.IsValid)
        {
            return;
        }
        if (UserOperation.userAlert(tb_Password.Text, tb_Email.Text, tb_QQ.Text))
        {
            SmallScript.goRedirect(Response, Session, "修改成功！", "default.aspx");
        }
    }
}