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
        foreach (string di in Directory.GetDirectories(Dir, "*", SearchOption.TopDirectoryOnly))
        {
            RSObject dirObj = new RSObject();
            dirObj.Name = di.Substring(di.LastIndexOf("\\") + 1, di.Length - di.LastIndexOf("\\") - 1);
            dirObj.Size = 0;
            dirObj.MTime = Directory.GetLastWriteTime(di);
            dirObj.Type = "";
            list.Add(dirObj);
        }
        foreach (string fi in Directory.GetFiles(Dir, "*", SearchOption.TopDirectoryOnly))
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