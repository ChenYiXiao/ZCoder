using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
public partial class admin_RSManager_RSManager : System.Web.UI.UserControl
{
    private string dir = "";


    public string Dir
    {
        get { return dir; }
        set { dir = value; }
    }

    public DataTable RSTable = null;
    private List<RSObject> RSObjects = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["dir"] != null)
        {
            Dir = Request.QueryString["dir"].ToString();
        }
        rpt_Objets.DataSource = GetDataSource();
        rpt_Objets.DataBind();
    }
    private void inite()
    {
        GetList();
        RSTable = BuildTable();
        return;
    }
    public DataTable GetDataSource()
    {
        GetList();
        return RSTable = BuildTable();

    }
    private DataTable BuildTable()
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("name");
        dt.Columns.Add("size");
        dt.Columns.Add("mTime");
        dt.Columns.Add("type");

        DataRow Fdr = dt.NewRow();
        Fdr["name"] = "..";
        Fdr["size"] = 0;
        Fdr["mTime"] = "";
        Fdr["type"] = "";
        dt.Rows.Add(Fdr);
        foreach (RSObject ro in RSObjects)
        {
            DataRow dr = dt.NewRow();
            dr["name"] = ro.Name;
            dr["size"] = ro.Size;
            dr["mTime"] = ro.MTime;
            dr["type"] = ro.Type;
            dt.Rows.Add(dr);

        }
        return dt;
    }
    private void GetList()
    {
        List<RSObject> list = new List<RSObject>();
        string RealDir=Server.MapPath(Dir);

        foreach (string di in Directory.GetDirectories(RealDir, "*", SearchOption.TopDirectoryOnly))
        {
            RSObject dirObj = new RSObject();
            dirObj.Name = di.Substring(di.LastIndexOf("\\") + 1, di.Length - di.LastIndexOf("\\") - 1);
            dirObj.Size = 0;
            dirObj.MTime = Directory.GetLastWriteTime(di);
            dirObj.Type = "";
            list.Add(dirObj);
        }
        foreach (string fi in Directory.GetFiles(RealDir, "*", SearchOption.TopDirectoryOnly))
        {
            RSObject fileObject = new RSObject();
            fileObject.Name = fi.Substring(fi.LastIndexOf("\\") + 1, fi.Length - fi.LastIndexOf("\\") - 1);
            FileInfo fInfo = new FileInfo(fi);
            fileObject.MTime = fInfo.LastWriteTime;
            fileObject.Type = fInfo.Extension;
            fileObject.Size = fInfo.Length;
            list.Add(fileObject);
        }
        RSObjects = list;
        return;
    }

    protected void FixIcon(object sender, EventArgs e)
    {
        Image img = (Image)sender;
        if (img.ImageUrl != "")
        {
            img.ImageUrl = "~/admin/RSManager/images/dir.png";
        }
        else
        {
            img.ImageUrl = "~/admin/RSManager/images/file.png";
        }
    }
    protected void FixUrl(object sender, EventArgs e)
    {
        HyperLink hl = (HyperLink)sender;
        if (hl.NavigateUrl == "..")
        {
            string tempDir = Dir.Substring(0, Dir.LastIndexOf("\\") + 1);
            if (tempDir == AppConfiger.GetProjectsDir(Server))
            {
                hl.NavigateUrl = "";
            }
            else
            {
                hl.NavigateUrl = Request.Url.AbsolutePath + "?dir=" + tempDir;
            }
        }
        else
        {
            hl.NavigateUrl = Request.Url.AbsolutePath + "?dir=" + Dir + "\\" + hl.NavigateUrl;
        }
        
        
        /*
        if (btn.Text == "..")
        {
            string tempDir = Dir.Substring(0, Dir.LastIndexOf("\\") + 1);
            if (tempDir == Server.MapPath(AppConfiger.GetProjectsDir(Server)))
            {
                return;
            }
            else
            {
                this.Dir = tempDir;
            }
        }
        else
        {
            this.Dir = dir + "\\" + btn.Text;
        }
        */
    }

}
class RSObject
{
    string name = "";

    public string Name
    {
        get { return name; }
        set { name = value; }
    }
    long size = 0;

    public long Size
    {
        get { return size; }
        set { size = value; }
    }
    DateTime mTime = DateTime.Now;

    public DateTime MTime
    {
        get { return mTime; }
        set { mTime = value; }
    }
    string type = "";//空为目录

    public string Type
    {
        get { return type; }
        set { type = value; }
    }
}