using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ascx_LatestNote : System.Web.UI.UserControl
{
   
    public override void DataBind()
    {
        lbPage.Text = page.ToString();
        DataBase db = new DataBase();
        DataSet ds = db.ExCommand("SELECT  tb_note.id, tb_note.uid, tb_note.cid, tb_code.pid, tb_note.upTime, tb_note.context, tb_note.startLine, tb_note.endLine, tb_note.agree, tb_note.disagree, tb_code.path, tb_project.projectName, tb_user.userName FROM tb_code INNER JOIN tb_note ON tb_code.id = tb_note.cid INNER JOIN tb_user ON tb_note.uid = tb_user.id INNER JOIN tb_project ON tb_code.pid = tb_project.id");
        DataOperate.dlBind(8, ds, lbPage, lbtpage, lbtnUp, lbtnnext, lbtnback, lbtnone, this.DataList1);
        base.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session["page"] = 1;
            DataBind();
        }
        
    }
    int page
    {
        get
        {
            int p = Session["page"] != null ? int.Parse(Session["page"].ToString()) : 1;
            return p;
        }
        set
        {
            Session["page"] = value;
        }
    }
    protected void lbtnUp_Click(object sender, EventArgs e)
    {
        this.page--; DataBind();
    }
    protected void lbtnnext_Click(object sender, EventArgs e)
    {
        this.page++; DataBind();
    }
    protected void lbtnback_Click(object sender, EventArgs e)
    {
        this.page = int.Parse(this.lbtpage.Text); DataBind();
    }
    protected void lbtnone_Click(object sender, EventArgs e)
    {
        this.page = 1; DataBind();
    }
}

