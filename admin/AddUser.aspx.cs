using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_AddUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void A_Button1_Click(object sender, EventArgs e)
    {
        DataBase db = new DataBase();
        String str1 = this.A_TB1.Text;
        String str2 = A_TB2.Text;
        String str3 = A_TB4.Text;
        String str4 = "false";
        if (A_CB1.Checked == true) {
            str4 = "true";
        }
        String str="INSERT INTO dbo.tb_user VALUES(str1,str2,str3,null,null,str4,null)";
        db.ExCommandNoBack(str);
    }

    protected void A_TB1_TextChanged(object sender, EventArgs e)
    {

    }
}