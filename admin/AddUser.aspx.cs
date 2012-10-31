using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_AddUser :System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void A_Button1_Click(object sender, EventArgs e)
    {
        DataBase db = new DataBase();
        string userName = A_TB1.Text;
        string password = A_TB2.Text;
        string email = A_TB4.Text;
        bool isAdmin = false;
        isAdmin =A_CB1.Checked;
        if (UserOperation.Reg(userName, password, email, "", true, isAdmin, DateTime.Now))
        {
            SmallScript.MessageBox(Page, "添加用户成功。");
            return;
        }
        else
        {
            SmallScript.MessageBox(Page, "添加用户失败。");
            return;
        }
    }

    protected void A_TB1_TextChanged(object sender, EventArgs e)
    {

    }
}